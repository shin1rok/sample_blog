require 'rails_helper'

RSpec.describe "users/drafts/new", type: :view do
  before(:each) do
    assign(:users_draft, Users::Draft.new())
  end

  xit "renders new users_draft form" do
    render

    assert_select "form[action=?][method=?]", users_drafts_path, "post" do
    end
  end
end
