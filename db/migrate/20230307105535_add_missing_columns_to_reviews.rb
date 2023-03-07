class AddMissingColumnsToReviews < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :transport, :string 
    add_column :reviews, :groceries, :string
    add_column :reviews, :restaurant, :string 
    add_column :reviews, :activities, :text
    add_column :reviews, :tips, :text   
  end
end
