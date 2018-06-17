class CreateDiseaseByCultures < ActiveRecord::Migration[5.0]
  def change
    create_table :disease_by_cultures do |t|
      t.integer :disease_id
      t.integer :culture_id

      t.timestamps
    end
  end
end
