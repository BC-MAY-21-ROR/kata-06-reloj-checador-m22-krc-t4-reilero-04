# frozen_string_literal: true

class RegistrationsController < Devise::RegistrationsController
  before_action :authenticate_employee!, :redirect_unless_admin, only: %i[new create]
  skip_before_action :require_no_authentication

  private

  def redirect_unless_admin
    unless current_employee.try(:admin?)
      flash[:error] = 'Only admins can do that'
      redirect_to new_employee_session_path
    end
  end

  def sign_up(_resource_name, _resource)
    true
  end
end
