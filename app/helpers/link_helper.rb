module LinkHelper
  def link_to_unturbolinks(name, url, klass = 'btn btn-outline-dark btn-sm')
    link_to(name, url, class: klass, data: { turbolinks: false })
  end
end
