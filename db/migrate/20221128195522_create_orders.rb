class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.boolean :fulfilled
      t.string :address
      t.string :telephone
      t.string :email

      t.timestamps
    end
  end
end
