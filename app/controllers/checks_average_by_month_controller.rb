class ChecksAverageByMonthController < ApplicationController
  
  def index
    @checks_average_by_month = Attendance.all
    @employees = Employee.all
    if params[:query_text].present?
      @employees = @employees.global_search(params[:query_text])
    end
  end
  
end
