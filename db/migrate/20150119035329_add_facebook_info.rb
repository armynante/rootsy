class AddFacebookInfo < ActiveRecord::Migration
  def change
    add_column :prospects, :fb_image_url, :string
    add_column :prospects, :fb_profile_url, :string
    add_column :prospects, :fb_id, :string
    add_column :prospects, :provider, :string
    rename_column :prospects, :image_url, :linkedin_image_url
  end
end
