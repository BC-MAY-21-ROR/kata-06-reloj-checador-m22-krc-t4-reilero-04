class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to employees_path
    else
    end
  end

  private
  def employee_params
    params.require(:employee).permit(:name, :email, :position, :private_number, :employee_number, :admin)
  end

end
