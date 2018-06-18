class CreatePathogens < ActiveRecord::Migration[5.0]
  def change
    create_table :pathogens do |t|
      t.string :name
      t.text :description
      t.text :epidemiology
      t.integer :taxonomic_table_id

      t.timestamps
    end
  end
end
