class AttendancesController < ApplicationController

  def index
    @attendance = Attendance.new
  end

  def show

  end

  def new

  end
  
  def create
    @attendance = Attendance.new(attendance_params)
    if @attendance.save
      redirect_to attendances_path, notice: 'Check In Exitoso'
    else
      redirect_to attendances_path, status: :unprocessable_entity
    end
  end

  private

  def attendance_params
    params.require(:attendance).permit(:actual_date, :check_in, :check_out)
  end


end