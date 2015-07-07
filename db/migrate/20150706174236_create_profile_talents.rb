class CreateProfileTalents < ActiveRecord::Migration
  def change
    create_table :profile_talents, :id => false do |t|
    	t.integer :profile_id
    	t.integer :talent_id

      t.timestamps null: false
    end
  end
end
