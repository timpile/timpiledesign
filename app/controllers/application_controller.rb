class ApplicationController < ActionController::Base
  layout :layout_by_resource
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  include CurrentUserConcern
  include DefaultPageContentConcern
  include DeviseWhitelistConcern

  # Layout per resource_name AND action
  def layout_by_resource
    if devise_controller? && resource_name == :user && action_name == "edit"
      "account"
    elsif devise_controller? && controller_name == 'sessions' && action_name == "new"
      "login"
    else
      "application"
    end
  end
end
