class AddImagetoListing < ActiveRecord::Migration[7.0]
  def change
    add_column :listings, :image, :string
  end
end
