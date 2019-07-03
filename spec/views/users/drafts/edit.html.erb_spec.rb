require 'rails_helper'

RSpec.describe "users/drafts/edit", type: :view do
  before(:each) do
    @users_draft = assign(:users_draft, Users::Draft.create!())
  end

  xit "renders the edit users_draft form" do
    render

    assert_select "form[action=?][method=?]", users_draft_path(@users_draft), "post" do
    end
  end
end
