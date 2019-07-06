class Users::PostsController < ApplicationController
  before_action :prohibit_keeping_drafts_more_than_10, only: %i[new create]
  before_action :set_post, only: %i[edit update destroy]

  def index
    @posts = Post.all.order(created_at: :desc).page(params[:page])
  end

  def show
    post = Post.find(params[:id])
    redirect_to user_name_post_path(username: post.user.url_name, id: post.id)
  end

  def new
    @post = Post.new(status: :draft)
  end

  def edit
  end

  def create
    @post = current_user.posts.new(post_params)

    if @post.save
      redirect_depending_on_status
    else
      render :new
    end
  end

  def update
    if @post.update(post_params)
      redirect_depending_on_status
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to user_name_drafts_path(current_user.url_name), notice: '削除しました。'
  end

  private

  def set_post
    @post = current_user.posts.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, :status)
  end

  # TODO: バリデーションで実装できそう
  def prohibit_keeping_drafts_more_than_10
    return if current_user.drafts.count < Post::MAX_DRAFT

    redirect_to users_drafts_path, notice: '保存できる下書きは10件までです。'
    return
  end

  def redirect_depending_on_status
    if @post.draft?
      redirect_to user_name_draft_path(username: current_user.url_name, id: @post.id), notice: notice_comment
    else
      redirect_to post_path(username: current_user.url_name, id: @post.id), notice: notice_comment
    end
  end

  # TODO: concernとかで切り出す
  def notice_comment
    action_name == 'create' ? '登録しました。' : '更新しました。'
  end
end
