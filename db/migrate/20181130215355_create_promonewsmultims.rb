class CreatePromonewsmultims < ActiveRecord::Migration[5.0]
  def change
    create_table :promonewsmultims do |t|
      t.integer :promotion_id
      t.integer :multim_type
      t.integer :importantnews_id
      t.string :reference

      t.timestamps
    end
  end
end
