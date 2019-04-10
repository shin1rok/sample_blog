require 'rails_helper'

RSpec.describe "users/posts/index", type: :view do
  before(:each) do
    assign(:users_posts, [
      Users::Post.create!(),
      Users::Post.create!()
    ])
  end

  it "renders a list of users/posts" do
    render
  end
end
