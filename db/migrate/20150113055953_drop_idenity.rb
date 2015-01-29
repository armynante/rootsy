class DropIdenity < ActiveRecord::Migration
  def change
    drop_table :identities

    add_column :users, :linkedin_token, :string
    add_column :users, :linkedin_secret, :string
    add_column :users, :linkedin_uid, :string
  end
end
