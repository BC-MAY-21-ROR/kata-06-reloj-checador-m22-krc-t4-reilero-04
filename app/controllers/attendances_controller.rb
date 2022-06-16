# frozen_string_literal: true

class AttendancesController < ApplicationController
  skip_before_action :authenticate_employee!
  def index
    @attendance = Attendance.new
  end

  def show; end

  def new; end

  def create
    @employee = Employee.find_by(private_number: attendance_params[:employee_private_number])
    return redirect_to attendances_path, alert: 'Invalid check' if @employee.nil?

    @attendance = Attendance.where(employee_id: @employee.id).where('check_in BETWEEN ? AND ?',
      DateTime.now.beginning_of_day, DateTime.now.end_of_day).last
    if @attendance
      return redirect_to attendances_path, alert: 'Employee already checked today' if @attendance.check_out

      @attendance.update_column(:check_out, DateTime.now)
    else
      @attendance = Attendance.new({ employee_id: @employee.id, check_in: DateTime.now  })
      @attendance.save
    end

    redirect_to attendances_path, notice: 'Succesfully check'
  end

  private

  def attendance_params
    params.require(:attendance).permit(:employee_private_number)
  end
end
