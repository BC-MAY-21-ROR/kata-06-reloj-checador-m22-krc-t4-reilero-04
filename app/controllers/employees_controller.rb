# frozen_string_literal: true

class EmployeesController < ApplicationController
  def index
    # @employees = Employee.select { |x| x.admin == true }
    # @employees = Employee.where(admin: true)
    @employees = Employee.all
  end

  def new
    @employee = Employee.new
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to employees_path, notice: 'New employee created succesfully'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])

    if @employee.update(employee_params)
      redirect_to employees_path, notice: 'Employee edited ok'
    else
      render :edit, :unprocessable_entity
    end
  end

  def destroy
    @employee = Employee.find(params[:id])
    if @employee.destroy
      redirect_to employees_path, notice: 'Employee deleted ok'
    else
      render :edit, :unprocessable_entity
    end
  end

  private

  def employee_params
    params.require(:employee).permit(:name, :email, :position, :private_number, :admin, :store_id)
  end


end
