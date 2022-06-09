class EmployeeAttendanceRelation < ActiveRecord::Migration[7.0]
  def change
    add_reference :attendances, :employee, null: false ,foreign_key: true
  end
end
