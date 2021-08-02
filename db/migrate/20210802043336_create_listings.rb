class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.references :manufacturer, null: false, foreign_key: true
      t.string :model
      t.references :condition, null: false, foreign_key: true
      t.integer :price
      t.references :color, null: false, foreign_key: true
      t.references :material, null: false, foreign_key: true
      t.references :fingerboard, null: false, foreign_key: true
      t.decimal :scale_length
      t.decimal :fingerboard_radius
      t.integer :number_of_frets
      t.references :bridge, null: false, foreign_key: true
      t.string :neck_pickup
      t.string :bridge_pickup
      t.references :country, null: false, foreign_key: true
      t.integer :year_manufactured
      t.string :serial_number
      t.references :case, null: false, foreign_key: true
      t.text :description
      t.references :delivery, null: false, foreign_key: true
      t.boolean :sold

      t.timestamps
    end
  end
end
