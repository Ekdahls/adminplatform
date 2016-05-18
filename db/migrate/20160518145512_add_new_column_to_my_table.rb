class AddNewColumnToMyTable < ActiveRecord::Migration
  def change
  	  add_column :categories, :category_hex_code, :string
  end
end
