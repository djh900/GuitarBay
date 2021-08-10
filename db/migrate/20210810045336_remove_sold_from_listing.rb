class RemoveSoldFromListing < ActiveRecord::Migration[6.1]
  def change
    remove_column :listings, :sold
  end
end
