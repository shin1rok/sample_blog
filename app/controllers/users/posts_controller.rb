class Users::PostsController < ApplicationController
  before_action :set_users_post, only: [:show, :edit, :update, :destroy]

  def index
    @users_posts = Users::Post.all
  end

  def show
  end

  def new
    @users_post = Users::Post.new
  end

  def edit
  end

  def create
    @users_post = Users::Post.new(users_post_params)

    if @users_post.save
      redirect_to @users_post, notice: 'Post was successfully created.'
    else
      render :new
    end
  end

  def update
    if @users_post.update(users_post_params)
      redirect_to @users_post, notice: 'Post was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @users_post.destroy
    redirect_to users_posts_url, notice: 'Post was successfully destroyed.'
  end

  private

  def set_users_post
    @users_post = Users::Post.find(params[:id])
  end

  def users_post_params
    params.fetch(:users_post, {})
  end
end
