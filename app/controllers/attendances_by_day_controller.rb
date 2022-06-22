class AttendancesByDayController < ApplicationController
  
  def index
    @attendances_by_day = Attendance.all
    @employees = Employee.all
    if params[:query_text].present?
      @employees = @employees.global_search(params[:query_text])
    end
  end
end
