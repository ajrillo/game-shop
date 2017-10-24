class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer :game_id
      t.integer :customer_id
      t.date :date

      t.timestamps null: false
    end
  end
end
