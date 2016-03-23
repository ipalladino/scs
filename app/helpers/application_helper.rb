module ApplicationHelper
  def build_menu
    menu_items = MenuItem.all.order('priority ASC')
    render "shared/menu", menu_items: menu_items
  end

  def is_admin
    if(current_user)
      return true
    else
      return false
    end
  end

  def get_active_template
    template = Template.where(active: true)[0]
  end
end
