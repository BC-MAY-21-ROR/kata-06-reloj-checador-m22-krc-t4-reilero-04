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
      employees.each do |employee|
        month = attendance.check_in.strftime("%B")
        months.push({month => employee.id })
      end
    end


    months.uniq

  end
  


  
  helper_method :show_months 
end
