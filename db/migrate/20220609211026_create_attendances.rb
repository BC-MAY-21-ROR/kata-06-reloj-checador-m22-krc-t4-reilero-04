class CreateAttendances < ActiveRecord::Migration[7.0]
  def change
    create_table :attendances do |t|
      t.datetime :check_in
      t.datetime :check_out

      t.timestamps
    end
  end
end
