class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :color
      t.string :species
      t.string :name
      t.date :lost_at
      t.string :location

      t.timestamps
    end
  end
end
