class AddUniqueProviderUidToUsers < ActiveRecord::Migration[8.1]
  def change
    add_index :users, %i[provider uid], unique: true, where: "provider IS NOT NULL AND uid IS NOT NULL AND provider <> '' AND uid <> ''", name: "index_users_on_provider_and_uid"
  end
end
