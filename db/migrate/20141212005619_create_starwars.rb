class CreateStarwars < ActiveRecord::Migration
  def change
    create_table :starwars do |t|
      t.string :name
      t.string :race
      t.string :isOldRepublic
      t.string :isPadawa

      t.timestamps
    end
  end
end
