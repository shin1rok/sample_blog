class UsersController < ApplicationController
  def show
    # TODO エラー画面を作る
    @user = User.find_by!(url_name: params[:username])
  end
end
