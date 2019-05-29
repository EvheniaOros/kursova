class ChangeIntegerLimitInEmployer < ActiveRecord::Migration[5.1]
  def change
  	change_column :employers, :phone, :bigint
  end
end
