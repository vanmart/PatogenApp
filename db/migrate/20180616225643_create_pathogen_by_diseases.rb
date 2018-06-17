class CreatePathogenByDiseases < ActiveRecord::Migration[5.0]
  def change
    create_table :pathogen_by_diseases do |t|
      t.integer :disease_id
      t.integer :pathogen_id

      t.timestamps
    end
  end
end
