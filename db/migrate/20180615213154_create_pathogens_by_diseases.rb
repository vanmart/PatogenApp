class CreatePathogensByDiseases < ActiveRecord::Migration[5.0]
  def change
    create_table :pathogens_by_diseases do |t|
      t.integer :pathogen_id
      t.integer :disease_id

      t.timestamps
    end
  end
end
