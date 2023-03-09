class ChangeDecimalToFloatInListings < ActiveRecord::Migration[7.0]
  def change
    change_column :listings, :latitude, :float
    change_column :listings, :longitude, :float
  end
end
