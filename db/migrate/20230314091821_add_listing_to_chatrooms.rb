class AddListingToChatrooms < ActiveRecord::Migration[7.0]
  def change
    add_reference :chatrooms, :listing, index: true
  end
end
