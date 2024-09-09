class ApplicationController < ActionController::Base

  before_action :sign_in_move
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  def sign_in_move
    authenticate_user!
  end

end
