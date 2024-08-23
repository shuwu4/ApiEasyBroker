class CreatePets < ActiveRecord::Migration[7.1]
  def change
    create_table :pets do |t|
      t.string :title
      t.text :description
      t.date :date

      t.timestamps
    end
  end
end
