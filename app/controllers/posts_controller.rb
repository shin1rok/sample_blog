class PostsController < ApplicationController
  before_action :set_active, only: [:index]

  def index
    raise
    @posts = Post.trends(params[:scope])
  end

  def show
    raise
    post = Post.find(params[:id])
    redirect_to users_post_path(username: post.user.url_name, id: post.id)
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :user_id)
  end

  def set_active
    @active = if params[:scope].nil?
                :daily
              else
                params[:scope].to_sym
              end
  end
end
