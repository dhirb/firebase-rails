class AddProviderInfoToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :provider_token, :string
    remove_column :users, :provider_id, :string
  end
end
