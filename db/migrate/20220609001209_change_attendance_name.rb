class ChangeAttendanceName < ActiveRecord::Migration[7.0]
  def change
    rename_table :attendance_table, :attendance
  end
end
