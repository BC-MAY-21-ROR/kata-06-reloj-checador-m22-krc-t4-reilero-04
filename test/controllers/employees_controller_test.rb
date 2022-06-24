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

  test 'can not log in if employee is not an admin' do
    sign_in @not_admin
    get employees_path
    assert_redirected_to new_employee_session_path
  end

  test 'can get employees list if admin is logged_in' do
    sign_in @admin
    get employees_path
    assert_response :success
  end

  test 'admin can not create a new employee without logg_in' do
    get new_employee_registration_path
    assert_redirected_to new_employee_session_path
  end

  test 'admin can create a new employee if is logg_in' do
    sign_in @admin
    get new_employee_registration_path
    assert_response :success
  end

  test 'admin can not edit a new employee without logg_in' do
    get edit_employee_path(@admin)
    assert_redirected_to new_employee_session_path
  end

  test 'admin can edit a new employee if is logg_in' do
    sign_in @admin
    get edit_employee_path(@admin)
    assert_response :success
  end

  test 'allows to update an employee' do
    sign_in @admin
    patch employee_path(employees(:employee_one)), params: {
      employee: {
        name: 'Marcelo', 
        position: 'Seller'
      }
    }

    assert_redirected_to employees_path
    assert_equal flash[:notice], 'Employee edited ok'
  end

  test "should delete an employee" do
    assert_difference("Employee.count", -1) do
      delete employee_path(employees(:employee_one))
    end

    assert_redirected_to employees_path
    assert_equal flash[:notice], 'Employee deleted ok'
  end

end
