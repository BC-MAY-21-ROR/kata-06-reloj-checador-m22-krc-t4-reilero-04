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
    m=[]

    attendances.each do |attendance|
      month = attendance.check_in.strftime("%B")
      unless months.include?(month=>[])
        months.push(month=>[])
        m<<month
      end
    end

    attendances.each do |attendance|
      user_month = attendance.check_in.strftime("%B")
      months.count.times do |i|
        if months[i].has_key?(user_month)
          months[i][user_month].push(attendance.employee_id)
        end
      end
    end

    months.count.times do |i|
      months[i][m[i]]=months[i][m[i]].uniq
    end

    employees.each do |employee|
      months.count.times do |i|
        months[i][m[i]].count.times do |ii|
          if months[i][m[i]][ii] == employee.id
            months[i][m[i]][ii] = employee.name
          end
        end
      end
    end

    months
  end


  
  helper_method :show_months
end
