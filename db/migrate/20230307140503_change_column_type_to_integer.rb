class ChangeColumnTypeToInteger < ActiveRecord::Migration[7.0]
  def change
    change_column :listings, :price, :integer
  end
end
