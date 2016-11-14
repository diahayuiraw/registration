class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :full_name
      t.integer :NIM
      t.string :email
      t.boolean :gender
      t.string :department
      t.integer :phone_number
      t.string :line_id
      t.integer :batch
      t.string :achivement

      t.timestamps null: false
    end
  end
end
