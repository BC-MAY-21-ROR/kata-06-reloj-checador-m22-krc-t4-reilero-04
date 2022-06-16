class RegistrationsController < Devise::RegistrationsController
    before_action :authenticate_employee!, :redirect_unless_admin,  only: [:new, :create]
    skip_before_action :require_no_authentication
  
    private
    def redirect_unless_admin
      unless current_employee.try(:admin?)
        flash[:error] = "Only admins can do that"
        redirect_to stores_path
      end
    end
  
    def sign_up(resource_name, resource)
      true
    end
  end