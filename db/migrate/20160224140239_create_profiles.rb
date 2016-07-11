class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.datetime :birthday
      t.string :location
      t.string :gender
      t.string :occupation
      t.text :aboutme
      t.text :interests

      t.timestamps null: false
    end
  end
end
