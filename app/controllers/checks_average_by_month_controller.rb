class ChecksAverageByMonthController < ApplicationController
  helper_method :show_months, :calculate_average_of_times

  def index
    @checks_average_by_month = Attendance.all
    @employees = Employee.all
  end

  def show_months
    attendances = Attendance.all
    employees = Employee.all
    
    hash_of_months = []
    individual_months=[]

    attendances.each do |attendance|
      month = attendance.check_in.strftime("%B")
      unless hash_of_months.include?(month=>[])
        hash_of_months.push(month=>[])
        individual_months<<month
      end
    end

    attendances.each do |attendance|
      user_month = attendance.check_in.strftime("%B")
      hash_of_months.count.times do |i|
        hash_of_months[i][user_month].push(attendance.employee_id) if hash_of_months[i].has_key?(user_month)
      end
    end

    hash_of_months.count.times do |i|
      hash_of_months[i][individual_months[i]]=hash_of_months[i][individual_months[i]].uniq
    end

    employees.each do |employee|
      hash_of_months.count.times do |i|
        hash_of_months[i][individual_months[i]].count.times do |ii|
          hash_of_months[i][individual_months[i]][ii] = employee.name if hash_of_months[i][individual_months[i]][ii] == employee.id
        end
      end
    end

    hash_of_months
  end

  def calculate_average_of_times( times )
    hours   = times.collect{ |time| time.split( ":" ).first.to_i }  # Large Arrays should only
    minutes = times.collect{ |time| time.split( ":" ).second.to_i } # call .split 1 time.
  
    average_hours   = hours.sum / hours.size
    average_minutes = ( minutes.sum / minutes.size ).to_s.rjust( 2, '0' ) # Pad with leading zero if necessary.
  
    "#{ average_hours }:#{ average_minutes }"
  end

end

