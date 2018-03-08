module DeviseWhitelistConcern
  extend ActiveSupport::Concern

  included do
    before_action :configure_permitted_parameters, if: :devise_controller?
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :company, :phone])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :company, :phone, :about, :image])
  end
end
