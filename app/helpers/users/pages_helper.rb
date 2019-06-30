module Users::PagesHelper
  def trends_link(name, scope, active)
    if scope == active
      link_to name, root_path(scope: scope), class: 'nav-link active'
    else
      link_to name, root_path(scope: scope), class: 'nav-link'
    end
  end
end
