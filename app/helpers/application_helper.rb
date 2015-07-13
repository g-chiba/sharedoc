module ApplicationHelper
  def name_with_avatar(user)
    content_tag(:span, class: "valign-wrapper") do
      image_tag(user.image_url, size: "24x24", class: "valign") + link_to(user.name, user_path(username: user.username), class: "valign")
    end
  end

  def presentation_image_tag(presentation)
    # TODO: 変換中を表現するメソッドを model に用意
    if presentation.image_file?
      image_tag(presentation.image_file_url, class: "blockimage")
    else
      image_tag("converting.png", size: "300x225", alt: "変換中", class: "blockimage")
    end
  end
end
