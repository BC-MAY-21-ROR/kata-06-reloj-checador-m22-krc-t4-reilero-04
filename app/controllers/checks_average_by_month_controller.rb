class ChecksAverageByMonthController < ApplicationController
  
  def index
    @checks_average_by_month = Attendance.all
    @employees = Employee.all
    if params[:query_text].present?
      @employees = @employees.global_search(params[:query_text])
    end
  end

  def show_months
    attendances = Attendance.all
    employees = Employee.all
    
    months = []

    attendances.each do |attendance|
      month = attendance.check_in.strftime("%B")
      unless months.include?(month=>[])
        months.push(month=>[])
      end
    end

    attendances.each do |attendance|
      month = attendance.check_in.strftime("%B")
      if month == months[2].keys
        months[2]["October"].push("1")
      end
    end

    months
  end


  
  helper_method :show_months 
end
