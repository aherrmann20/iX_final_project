class CreateTalents < ActiveRecord::Migration
  def change
    create_table :talents do |t|
      t.string :skill

      t.timestamps null: false
    end
  end
end
