class CreateProspects < ActiveRecord::Migration
  def change
    create_table :prospects do |t|
      t.string :name
      t.string :first_name
      t.string :last_name
      t.string :industry
      t.string :image_url
      t.string :linkedin_profile_url
      t.string :job_description
      t.string :location
      t.string :email
      t.integer :user_id
      t.string :a

      t.timestamps
    end
  end
end
