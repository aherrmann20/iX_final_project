class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :talent
      t.string :profile_photo
      t.string :description
      t.integer :age
      t.string :location

      t.timestamps null: false
    end
  end
end
