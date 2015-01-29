class RemoveAFromProspects < ActiveRecord::Migration
  def change
    remove_column :prospects, :a
  end
end
