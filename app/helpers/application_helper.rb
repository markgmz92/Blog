module ApplicationHelper

  # if an active page color = forestgreen
  # if not on active page color = white
  #takes_arguements: 'link', 'what page its on', 'change text color'
    def active_link_to (nav_link, contrl, action, url, style )
     if controller_name == contrl && action_name == action
      return link_to nav_link, url, id: style
    else
      return link_to nav_link, url, class: style
     end
    end

end
