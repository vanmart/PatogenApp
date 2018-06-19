class AddFieldsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string, null: false
    add_column :users, :phone, :string, null: false
    #add_column :users, :document, :integer, null: false, unique: true
    #add_column :users, :address, :string
  end
end
