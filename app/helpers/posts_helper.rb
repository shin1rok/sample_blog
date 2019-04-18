module PostsHelper
  def posts_trends_link(name, scope, active)
    if scope == active
      link_to name, posts_path(scope: scope), class: 'nav-link active'
    else
      link_to name, posts_path(scope: scope), class: 'nav-link'
    end
  end
end
