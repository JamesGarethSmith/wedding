class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.text :dietary_requirements
      t.integer :total_attending, null: false
      t.text :names_of_additional_guests

      t.timestamps null: false
    end

    add_index :rsvps, :email, unique: true
  end
end
