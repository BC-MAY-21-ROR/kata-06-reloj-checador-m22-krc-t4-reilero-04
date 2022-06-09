class AttendanceController < ApplicationController

  def index
    @attendances = Attendance.all
  end

  def show

  end

  def new
    @attendance = Attendance.new
  end

  def create
    @attendance = Attendance.new(attendance_params)
    if @attendance.save
      redirect_to attendance_path, notice: 'Check In Exitoso'
    else
      redirect_to attendance_path, status: :unprocessable_entity
    end
  end

  private

  def attendance_params
    params.require(:attendance).permit(:actual_date, :check_in, :check_out)
  end


end