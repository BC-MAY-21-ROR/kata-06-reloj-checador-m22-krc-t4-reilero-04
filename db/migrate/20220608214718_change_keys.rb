class ChangeKeys < ActiveRecord::Migration[7.0]
  def change
    remove_column :employees, :employee_number
  end
end
