class Users::UsersController < ApplicationController
  def show
    # TODO: エラー画面を作る
    @user = User.find_by!(url_name: params[:username])
    @recently_posts = @user.recently_posts.page(params[:page])
  end
end
