module ButtonHelper
  def switchable_dropdown_item(text, status)
    tag.li(text, class: 'dropdown-item pointer', onclick: "switchPostStatus('#{status}')")
  end
end
