class RenameProfileTalents < ActiveRecord::Migration
  def change
  	rename_table :profile_talents, :profiles_talents
  end
end
