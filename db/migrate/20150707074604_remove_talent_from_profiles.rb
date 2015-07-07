class RemoveTalentFromProfiles < ActiveRecord::Migration
  def change
    remove_column :profiles, :talent, :string
  end
end
