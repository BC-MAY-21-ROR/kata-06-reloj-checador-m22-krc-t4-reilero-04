# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :authenticate_employee!
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

 

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(:email, :password, :password_confirmation, :name, :position, :admin, :store_id, :private_number)
    end
  end
end
