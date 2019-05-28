class AddEmployerIdToCategory < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :employer_id, :integer
  end
end
