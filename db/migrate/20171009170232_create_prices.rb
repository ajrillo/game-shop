class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.integer :game_id
      t.string :name
      t.decimal :price

      t.timestamps null: false
    end
  end
end
