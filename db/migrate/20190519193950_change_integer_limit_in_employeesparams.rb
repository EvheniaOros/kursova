class ChangeIntegerLimitInEmployeesparams < ActiveRecord::Migration[5.1]
  
   def change
     change_column :employeesparams, :phonenumber, :integer, limit: 8
   end 
end
