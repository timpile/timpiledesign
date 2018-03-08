module LayoutsConcern
  extend ActiveSupport::Concern

  included do
    layout :layouts_by_resource
  end

  # Layout per resource_name AND action
  def layouts_by_resource
    if devise_controller? && resource_name == :user && action_name == "edit"
      "dashboard"
    elsif controller_name == "posts" && ["edit","new","index"].include?(action_name)
      "dashboard"
    else
      "application"
    end
  end
end
