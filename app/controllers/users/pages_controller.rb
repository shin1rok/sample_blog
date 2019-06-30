class Users::PagesController < ApplicationController
  before_action :set_active, only: [:top]

  def top
    @posts = Post.trends(params[:scope])
  end

  private

  def set_active
    @active = if params[:scope].nil?
                :daily
              else
                params[:scope].to_sym
              end
  end
end
