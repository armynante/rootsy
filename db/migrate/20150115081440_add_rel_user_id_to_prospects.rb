class AddRelUserIdToProspects < ActiveRecord::Migration
  def change
    add_column :prospects, :rel_user_id, :string 
  end
end
