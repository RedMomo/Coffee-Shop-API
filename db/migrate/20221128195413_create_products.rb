class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title
      t.boolean :featured
      t.string :roast
      t.boolean :single_origin
      t.text :description
      t.integer :price
      t.string :tasting_notes
      t.string :image_url
      t.integer :additional_info

      t.timestamps
    end
  end
end
