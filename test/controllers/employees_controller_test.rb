# frozen_string_literal: true

require 'test_helper'

class EmployeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin = employees(:employee_one)
    @not_admin = employees(:employee_two)
  end

  test 'can not get employees index without authenticate' do
    get employees_path
    assert_redirected_to new_employee_session_path
  end

  test 'can get employees index if employee is logged in and is admin' do
    sign_in @admin
    get employees_path
    assert_response :success
  end

  test 'can not get employees index if employee is logged in but is not admin' do
    sign_in @not_admin
    get employees_path
    assert_redirected_to new_employee_session_path
  end

  test 'can not get employees new without authenticate' do
    get new_employee_registration_path
    assert_redirected_to new_employee_session_path
  end

  test 'can get employees new if employee is logged in and is admin' do
    sign_in @admin
    get new_employee_registration_path
    assert_response :success
  end

  test 'can not get employees new if employee is logged in but is not admin' do
    sign_in @not_admin
    get new_employee_registration_path
    assert_redirected_to new_employee_session_path
  end


end
