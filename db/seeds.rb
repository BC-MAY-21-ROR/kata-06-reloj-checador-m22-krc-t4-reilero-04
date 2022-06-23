# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
counter = 1
31.times {
  Attendance.create(check_in: "2022-01-#{counter} 09:#{rand(60)}:00", check_out: "2022-01-#{counter} 19:#{rand(60)}:00", employee_id: 4)
  Attendance.create(check_in: "2022-01-#{counter} 09:#{rand(60)}:00", check_out: "2022-01-#{counter} 19:#{rand(60)}:00", employee_id: 5)
  Attendance.create(check_in: "2022-01-#{counter} 09:#{rand(60)}:00", check_out: "2022-01-#{counter} 19:#{rand(60)}:00", employee_id: 6)
  Attendance.create(check_in: "2022-01-#{counter} 09:#{rand(60)}:00", check_out: "2022-01-#{counter} 19:#{rand(60)}:00", employee_id: 7)
  counter += 1
}

counter = 1
28.times {
  Attendance.create(check_in: "2022-02-#{counter} 09:#{rand(60)}:00", check_out: "2022-02-#{counter} 19:#{rand(60)}:00", employee_id: 4)
  Attendance.create(check_in: "2022-02-#{counter} 09:#{rand(60)}:00", check_out: "2022-02-#{counter} 19:#{rand(60)}:00", employee_id: 5)
  Attendance.create(check_in: "2022-02-#{counter} 09:#{rand(60)}:00", check_out: "2022-02-#{counter} 19:#{rand(60)}:00", employee_id: 6)
  Attendance.create(check_in: "2022-02-#{counter} 09:#{rand(60)}:00", check_out: "2022-02-#{counter} 19:#{rand(60)}:00", employee_id: 7)
  counter += 1
}

counter = 1
31.times {
  Attendance.create(check_in: "2022-03-#{counter} 09:#{rand(60)}:00", check_out: "2022-03-#{counter} 19:#{rand(60)}:00", employee_id: 4)
  Attendance.create(check_in: "2022-03-#{counter} 09:#{rand(60)}:00", check_out: "2022-03-#{counter} 19:#{rand(60)}:00", employee_id: 5)
  Attendance.create(check_in: "2022-03-#{counter} 09:#{rand(60)}:00", check_out: "2022-03-#{counter} 19:#{rand(60)}:00", employee_id: 6)
  Attendance.create(check_in: "2022-03-#{counter} 09:#{rand(60)}:00", check_out: "2022-03-#{counter} 19:#{rand(60)}:00", employee_id: 7)
  counter += 1
}

counter = 1
30.times {
  Attendance.create(check_in: "2022-04-#{counter} 09:#{rand(60)}:00", check_out: "2022-04-#{counter} 19:#{rand(60)}:00", employee_id: 4)
  Attendance.create(check_in: "2022-04-#{counter} 09:#{rand(60)}:00", check_out: "2022-04-#{counter} 19:#{rand(60)}:00", employee_id: 5)
  Attendance.create(check_in: "2022-04-#{counter} 09:#{rand(60)}:00", check_out: "2022-04-#{counter} 19:#{rand(60)}:00", employee_id: 6)
  Attendance.create(check_in: "2022-04-#{counter} 09:#{rand(60)}:00", check_out: "2022-04-#{counter} 19:#{rand(60)}:00", employee_id: 7)
  counter += 1
}
counter = 1
31.times {
  Attendance.create(check_in: "2022-05-#{counter} 09:#{rand(60)}:00", check_out: "2022-05-#{counter} 19:#{rand(60)}:00", employee_id: 4)
  Attendance.create(check_in: "2022-05-#{counter} 09:#{rand(60)}:00", check_out: "2022-05-#{counter} 19:#{rand(60)}:00", employee_id: 5)
  Attendance.create(check_in: "2022-05-#{counter} 09:#{rand(60)}:00", check_out: "2022-05-#{counter} 19:#{rand(60)}:00", employee_id: 6)
  Attendance.create(check_in: "2022-05-#{counter} 09:#{rand(60)}:00", check_out: "2022-05-#{counter} 19:#{rand(60)}:00", employee_id: 7)
  counter += 1
}

counter = 1
21.times {
  Attendance.create(check_in: "2022-06-#{counter} 09:#{rand(60)}:00", check_out: "2022-06-#{counter} 19:#{rand(60)}:00", employee_id: 4)
  Attendance.create(check_in: "2022-06-#{counter} 09:#{rand(60)}:00", check_out: "2022-06-#{counter} 19:#{rand(60)}:00", employee_id: 5)
  Attendance.create(check_in: "2022-06-#{counter} 09:#{rand(60)}:00", check_out: "2022-06-#{counter} 19:#{rand(60)}:00", employee_id: 6)
  Attendance.create(check_in: "2022-06-#{counter} 09:#{rand(60)}:00", check_out: "2022-06-#{counter} 19:#{rand(60)}:00", employee_id: 7)
  counter += 1
}

