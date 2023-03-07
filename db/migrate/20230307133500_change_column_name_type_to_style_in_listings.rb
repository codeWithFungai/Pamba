class ChangeColumnNameTypeToStyleInListings < ActiveRecord::Migration[7.0]
  def change
    rename_column :listings, :type, :style
  end
end
