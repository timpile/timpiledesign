module ApplicationHelper
  def login_helper style = ''
    if current_user.is_a?(GuestUser)
      # (link_to "Register", new_user_registration_path, class: style) +
      # " ".html_safe +
      (link_to "Client Login", new_user_session_path, class: style)
    elsif current_page? edit_user_registration_path
      link_to "Logout", destroy_user_session_path, class: style, method: :delete
    else
      (link_to "Account", edit_user_registration_path, class: style) +
      " ".html_safe +
      (link_to "Logout", destroy_user_session_path, class: style, method: :delete)
    end
  end

  def nav_items
    [
      # {
      #   url: blog_path,
      #   title: "Blog"
      # },
    ]
  end

  def nav_helper style, tag_type
    nav_links = ""
    nav_items.each do |item|
      nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
    end
    nav_links.html_safe
  end

  def active? path
    "active" if current_page? path
  end

  def alerts
    alert = (flash[:alert] || flash[:error] || flash[:notice])
    if alert
      alert_generator alert
    end
  end

  def alert_generator msg
    js (extend_gritter position: "bottom_right") + (add_gritter(msg, sticky: false, time: 2000))
  end

  def social_items
    [
      {
        url: "https://www.linkedin.com/in/tim-pile-a8079546/",
        title: "Connect on Linkedin",
        name: "Linkedin",
        icon: 'linkedin'
      },
      {
        url: "https://github.com/timpile",
        title: "My code on Github",
        name: "Github",
        icon: 'github'
      },
      {
        url: "https://www.instagram.com/timsampile/",
        title: "Follow me on Instagram",
        name: "Instagram",
        icon: 'instagram'
      },
      # {
      #   url: "https://www.facebook.com/tim.pile.161",
      #   title: "Friend me on Facebook",
      #   name: "Facebook",
      #   icon: 'facebook-square'
      # },
      # {
      #   url: "https://twitter.com/timsampile",
      #   title: "Follow us on Twitter",
      #   name: "Twitter",
      #   icon: 'twitter'
      # },
      # {
      #   url: "https://www.instagram.com/timsampile/",
      #   title: "Follow us on Google Plus",
      #   name: "Google",
      #   icon: 'google-plus-square'
      # },
    ]
  end

  def nav_social_helper style
    social_links = "<ul class='navbar-nav'>"
    social_items.each do |item|
      social_links << "<li class='nav-item'>
          <a class='nav-link' rel='tooltip' title='#{item[:title]}' data-placement='bottom' href='#{item[:url]}' target='_blank'>
              #{fa_icon(item[:icon])}
              <p class='#{style}'>#{item[:name]}</p>
          </a>
      </li>"
    end
    social_links << "</ul>"
    social_links.html_safe
  end

  def social_link_helper style
    social_links = ""
    social_items.each do |item|
      social_links << "<a href='#{item[:url]}' class='#{style}'>#{fa_icon(item[:icon])}</a>"
    end
    social_links.html_safe
  end

  def image_generator(height:, width:)
    "http://via.placeholder.com/#{height}x#{width}"
  end

  def image_helper img
    if img.present?
      img
    else
      image_generator(height: '500', width: '500')
    end
  end

  def gravatar_helper user
    image_tag "https://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(user.email)}", width: 60
  end

end
