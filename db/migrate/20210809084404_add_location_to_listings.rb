class AddLocationToListings < ActiveRecord::Migration[6.1]
  def change
    add_column :listings, :location, :string
  end
end
