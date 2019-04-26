class Users::DraftsController < ApplicationController
  before_action :set_users_draft, only: [ :edit, :update, :destroy]

  def index
    redirect_to users_draft_path(id: current_user.drafts.latest_draft.id)
  end

  def show
    @drafts = current_user.drafts
    @draft = current_user.drafts.find(params[:id])
  end

  def new
    redirect_to new_users_post_path
  end

  def edit
  end

  def create
    @users_draft = Users::Draft.new(users_draft_params)

    if @users_draft.save
      redirect_to @users_draft, notice: 'Draft was successfully created.'
    else
      render :new
    end
  end

  def update
    if @users_draft.update(users_draft_params)
      redirect_to @users_draft, notice: 'Draft was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @users_draft.destroy
    redirect_to users_drafts_url, notice: 'Draft was successfully destroyed.'
  end

  private

  def set_users_draft
    @users_draft = Users::Draft.find(params[:id])
  end

  def users_draft_params
    params.fetch(:users_draft, {})
  end
end
