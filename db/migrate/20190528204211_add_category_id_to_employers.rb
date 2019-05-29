class AddCategoryIdToEmployers < ActiveRecord::Migration[5.1]
  def change
    add_column :employers, :category_id, :integer
  end
end
