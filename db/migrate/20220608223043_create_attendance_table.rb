class CreateAttendanceTable < ActiveRecord::Migration[7.0]
  def change
    create_table :attendance_table do |t|
      t.date :actual_date
      t.time :check_in
      t.time :check_out
      
      t.timestamps
    end
  end
end
