class Users::DraftsController < ApplicationController
  def index
    redirect_to user_name_draft_path(id: current_user.drafts.latest_draft.id) if current_user.drafts.exists?
  end

  def show
    @drafts = current_user.drafts
    @draft = current_user.drafts.find(params[:id])
  end
end
