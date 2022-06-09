class ChangeAttendanceName2 < ActiveRecord::Migration[7.0]
  def change
    rename_table :attendance, :attendances
  end
end

