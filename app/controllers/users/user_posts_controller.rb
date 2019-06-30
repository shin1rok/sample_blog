class Users::UserPostsController < ApplicationController
  def show
    # TODO: エラー画面を作る
    @post = User.find_by!(url_name: params[:username]).posts.find_by!(id: params[:id])
  end
end
