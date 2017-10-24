class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :last
      t.string :first
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.string :zip
      t.integer :RegistrationID
      t.integer :InquiryID
      t.integer :AccountID

      t.timestamps null: false
    end
  end
end
