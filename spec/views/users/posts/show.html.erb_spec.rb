require 'rails_helper'

RSpec.describe "users/posts/show", type: :view do
  before(:each) do
    @users_post = assign(:users_post, Users::Post.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
