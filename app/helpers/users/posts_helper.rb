module Users::PostsHelper
  def users_posts_or_post_path(post)
    post.new_record? ? users_posts_path : users_post_path
  end
end
