class StoreEmployeeRelation < ActiveRecord::Migration[7.0]
  def change
    add_reference :employees, :store, foreign_key: true
  end
end
