class AddSuplementalDataToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string 
    add_column :users, :last_name, :string 
    add_column :users, :location, :string 
    add_column :users, :industry, :string 
    add_column :users, :job_description, :string 
    add_column :users, :linkedin_profile_url, :string 
    add_column :users, :image_url, :string 
    add_column :users, :secondary_email, :string 
  end
end
