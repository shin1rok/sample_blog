require 'rails_helper'

RSpec.describe "users/posts/new", type: :view do
  before(:each) do
    assign(:users_post, Users::Post.new())
  end

  xit "renders new users_post form" do
    render

    assert_select "form[action=?][method=?]", users_posts_path, "post" do
    end
  end
end
