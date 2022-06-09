class ChangeTypeDataAttendance < ActiveRecord::Migration[7.0]
  def change
    change_column :attendance, :actual_date, :string
    change_column :attendance, :check_in, :string
    change_column :attendance, :check_out, :string
  end
end
