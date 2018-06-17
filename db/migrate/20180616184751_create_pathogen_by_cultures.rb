class CreatePathogenByCultures < ActiveRecord::Migration[5.0]
  def change
    create_table :pathogen_by_cultures do |t|
      t.integer :pathogen_id
      t.integer :culture_id

      t.timestamps
    end
  end
end
