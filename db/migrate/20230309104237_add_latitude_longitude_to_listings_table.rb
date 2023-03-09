class AddLatitudeLongitudeToListingsTable < ActiveRecord::Migration[7.0]
  def change
    add_column :listings, :longitude, :decimal
    add_column :listings, :latitude, :decimal
  end
end
