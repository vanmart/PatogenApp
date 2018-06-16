class CreateMultims < ActiveRecord::Migration[5.0]
  def change
    create_table :multims do |t|
      t.string :link
      t.integer :multim_type
      t.integer :culture_id
      t.integer :pathogen_id
      t.integer :disease_id

      t.timestamps
    end
  end
end
