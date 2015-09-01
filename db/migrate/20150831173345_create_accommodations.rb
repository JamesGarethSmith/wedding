class CreateAccommodations < ActiveRecord::Migration
  def change
    create_table :accommodations do |t|
      t.string :title
      t.string :url
      t.string :price_range
      t.text :description
      t.integer :location_id
      t.string :accommodates

      t.timestamps null: false
    end

    add_index :accommodations, :location_id
  end
end
