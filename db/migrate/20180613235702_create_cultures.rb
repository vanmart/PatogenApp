class CreateCultures < ActiveRecord::Migration[5.0]
  def change
    create_table :cultures do |t|
      t.string :name
      t.string :scientific_name
      t.text :description

      t.timestamps
    end
  end
end
