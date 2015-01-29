class CreateAuthentications < ActiveRecord::Migration
  def change
    remove_column :users, :linkedin_token
    remove_column :users, :linkedin_uid
    remove_column :users, :linkedin_secret
    
    create_table :authentications do |t|
      t.integer :user_id
      t.string :provider
      t.string :uid

      t.timestamps
    end
  end
end
