class AddJoinUsersToRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :join_users, :string
  end
end
