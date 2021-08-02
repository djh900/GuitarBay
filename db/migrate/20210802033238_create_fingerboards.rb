class CreateFingerboards < ActiveRecord::Migration[6.1]
  def change
    create_table :fingerboards do |t|
      t.string :name

      t.timestamps
    end
  end
end
