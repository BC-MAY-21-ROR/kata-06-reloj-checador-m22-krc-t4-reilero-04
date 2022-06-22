class ChecksAverageByMonthController < ApplicationController
  helper_method :show_months, :calculate_average_of_times

  def index
    @checks_average_by_month = Attendance.all
    @employees = Employee.all
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

  def calculate_average_of_times( times )
    hours   = times.collect{ |time| time.split( ":" ).first.to_i }  # Large Arrays should only
    minutes = times.collect{ |time| time.split( ":" ).second.to_i } # call .split 1 time.
  
    average_hours   = hours.sum / hours.size
    average_minutes = ( minutes.sum / minutes.size ).to_s.rjust( 2, '0' ) # Pad with leading zero if necessary.
  
    "#{ average_hours }:#{ average_minutes }"
  end

  private

  def string_to_date(letter)
    x=0
    months = ["January","February","March","April","May","June","July","August","September","Octuber","November","December"]
    x= months.index(letter)
    x=+1
  end

end
