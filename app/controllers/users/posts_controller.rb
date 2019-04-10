class Users::PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.where(user_id: User.first.id)
    # @users_posts = current_user.posts
  end

  def show
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.new(post_params.merge(user_id: User.first.id))
    # @post = current_user.posts.new(post_params)

    if @post.save
      redirect_to users_post_path(id: @post.id), notice: 'Post was successfully created.'
    else
      render :new
    end
  end

  def update
    if @post.update(post_params)
      redirect_to users_post_path(id: @post.id), notice: 'Post was successfully updated.'
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
    @post = Post.find(params[:id])
    # @post = current_user.posts.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
