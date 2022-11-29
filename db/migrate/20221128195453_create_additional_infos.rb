class CreateAdditionalInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :additional_infos do |t|
      t.text :process
      t.text :origin
      t.text :altitude
      t.string :image_url

      t.timestamps
    end
  end
end
