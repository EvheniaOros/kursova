class ChangeIntegerLimitInYourTable < ActiveRecord::Migration[5.1]
  def change
     change_column :your_table, :your_column, :integer, limit: 8
   end 
end
