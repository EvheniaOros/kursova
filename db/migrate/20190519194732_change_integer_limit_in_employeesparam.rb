class ChangeIntegerLimitInEmployeesparam < ActiveRecord::Migration[5.1]
 def change
     change_column :employeesparams, :phonenumber, :bigint
   end 

end
