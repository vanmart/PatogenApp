class CreateTaxonomicTables < ActiveRecord::Migration[5.0]
  def change
    create_table :taxonomic_tables do |t|
      t.string :kingdom
      t.string :division
      t.string :t_class
      t.string :order
      t.string :family
      t.string :gender
      t.string :species

      t.timestamps
    end
  end
end
