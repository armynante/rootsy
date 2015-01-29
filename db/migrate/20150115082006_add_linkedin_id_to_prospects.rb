class AddLinkedinIdToProspects < ActiveRecord::Migration
  def change
    add_column :prospects, :linkedin_id, :string
  end
end
