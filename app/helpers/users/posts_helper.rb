module Users::PostsHelper
  def posts_or_post_path(post)
    post.new_record? ? posts_path : post_path
  end
end
