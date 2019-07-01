require 'rails_helper'

RSpec.describe "users/posts/edit", type: :view do
  before(:each) do
    @users_post = assign(:users_post, Users::Post.create!())
  end

  it "renders the edit users_post form" do
    render

    assert_select "form[action=?][method=?]", users_post_path(@users_post), "post" do
    end
  end
end
