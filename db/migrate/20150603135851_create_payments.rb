class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :sender_id
      t.integer :amount_in_pence
      t.string :source
      t.datetime :received_at
      t.string :reference

      t.timestamps null: false
    end
    add_index :payments, :sender_id
    add_index :payments, :amount_in_pence
    add_index :payments, :source
    add_index :payments, :received_at
    add_index :payments, :reference
  end
end
