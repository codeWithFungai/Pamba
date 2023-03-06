class CreateListings < ActiveRecord::Migration[7.0]
  def change
    create_table :listings do |t|
      t.string :title
      t.string :address
      t.string :city
      t.text :description
      t.decimal :price
      t.boolean :kitchen
      t.boolean :private_bathroom
      t.boolean :laundry
      t.decimal :distance
      t.string :type
      t.integer :nr_of_rooms

      t.timestamps
    end
  end
end
