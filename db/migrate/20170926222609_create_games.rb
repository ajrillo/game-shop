class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.text :info
      t.string :linkToGame

      t.timestamps null: false
    end
  end
end
