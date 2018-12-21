class CreateOutbreakReports < ActiveRecord::Migration[5.0]
  def change
    create_table :outbreak_reports do |t|
      t.integer :user_id
      t.integer :report_type
      t.text :content
      t.string :imagen
      t.string :audio
      t.float :latitude
      t.float :longitude
      t.float :altitude

      t.timestamps
    end
  end
end
