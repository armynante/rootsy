class AddFullStreetAddressToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :full_street_address, :string
  end
end
