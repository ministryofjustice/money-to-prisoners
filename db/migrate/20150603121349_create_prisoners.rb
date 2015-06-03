class CreatePrisoners < ActiveRecord::Migration
  def change
    create_table :prisoners do |t|
      t.string :prisoner_name
      t.string :prisoner_number
      t.date :prisoner_dob

      t.timestamps null: false
    end
    add_index :prisoners, :prisoner_name
    add_index :prisoners, :prisoner_number
    add_index :prisoners, :prisoner_dob
  end
end
