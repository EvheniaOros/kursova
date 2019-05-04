class CreateEmployeesparams < ActiveRecord::Migration[5.1]
  def change
    create_table :employeesparams do |t|
      t.integer :user_id
      t.string :firstname
      t.string :lastname
      t.integer :age
      t.string :city
      t.string :address
      t.integer :phonenumber
      t.string :position
      t.string :cityofwork
      t.string :typeofemployment
      t.string :education
      t.string :faculty
      t.string :body

      t.timestamps
    end
  end
end
