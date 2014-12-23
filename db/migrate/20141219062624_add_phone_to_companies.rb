class AddPhoneToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :phone_num, :string
  end
end
