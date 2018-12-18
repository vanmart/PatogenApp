class UpdateImportantnewsFieldToCommets < ActiveRecord::Migration[5.0]
  def change
    rename_column :comments, :importantnew_id, :importantnews_id
  end
end
