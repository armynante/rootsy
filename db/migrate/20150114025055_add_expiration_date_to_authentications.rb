class AddExpirationDateToAuthentications < ActiveRecord::Migration
  def change
    add_column :authentications, :expires_at, :time 
  end
end
