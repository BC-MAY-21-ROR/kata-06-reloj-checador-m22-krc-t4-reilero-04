class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.string :position
      t.integer :private_number
      t.boolean :admin
      t.datetime :deleted_at
      t.references :stores, null: false, foreign_key: true


      t.timestamps
    end
  end
end
