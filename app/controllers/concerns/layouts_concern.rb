module LayoutsConcern
  extend ActiveSupport::Concern

  included do
    layout :layouts_by_resource
  end

  # Layout per resource_name AND action
  def layouts_by_resource
    if devise_controller? && resource_name == :user && action_name == "edit"
      "account"
    else
      "application"
    end
  end
end