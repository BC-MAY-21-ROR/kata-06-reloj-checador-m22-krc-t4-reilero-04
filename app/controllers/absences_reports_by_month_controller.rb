class AbsencesReportsByMonthController < ApplicationController

  def index
    @attendances = Attendance.all
    @employees = Employee.all
    @laboral_days = %w[Monday Tuesday Wednesday Thursday Friday]
    @weekend_days = %w[Saturday Sunday]
    if params[:query_text].present?
      @employees = @employees.global_search(params[:query_text])
    end
  end
  
end
