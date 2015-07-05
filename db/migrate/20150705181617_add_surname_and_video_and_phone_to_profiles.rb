class AddSurnameAndVideoAndPhoneToProfiles < ActiveRecord::Migration
  def change
  	add_column :profiles, :surname, :string
  	add_column :profiles, :video, :string
  	add_column :profiles, :phone, :string
  end
end
