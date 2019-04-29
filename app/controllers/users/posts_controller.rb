class Users::PostsController < ApplicationController
  before_action :set_post, only: %i[edit update destroy]

  def index
    redirect_to users_path(params[:username])
  end

  def show
    @post = Post.find(params[:id])
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
    redirect_to users_posts_path, notice: 'Post was successfully destroyed.'
  end

  private

  def set_post
    @post = current_user.posts.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, :status)
  end

  def redirect_depending_on_status
    if @post.draft?
      redirect_to users_draft_path(username: current_user.url_name, id: @post.id), notice: notice_comment
    else
      redirect_to users_post_path(username: current_user.url_name, id: @post.id), notice: notice_comment
    end
  end

  # TODO concernとかで切り出す
  def notice_comment
    action_name == 'create' ? '登録しました。' : '更新しました。'
  end
end
