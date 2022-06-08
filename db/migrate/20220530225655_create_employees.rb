# frozen_string_literal: true

class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.string :position
      t.integer :private_number
      t.integer :employee_number
      t.boolean :admin

      t.timestamps
    end
  end
end
