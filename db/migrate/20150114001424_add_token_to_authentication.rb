class AddTokenToAuthentication < ActiveRecord::Migration
  def change
    add_column :authentications, :auth_token, :string 
  end
end
