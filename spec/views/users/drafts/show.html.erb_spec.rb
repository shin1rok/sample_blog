require 'rails_helper'

RSpec.describe "users/drafts/show", type: :view do
  before(:each) do
    @users_draft = assign(:users_draft, Users::Draft.create!())
  end

  xit "renders attributes in <p>" do
    render
  end
end
