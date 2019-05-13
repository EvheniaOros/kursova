class CreateEmployers < ActiveRecord::Migration[5.1]
  def change
    create_table :employers do |t|
      t.string :search
      t.string :city

      t.timestamps
    end
  end
end
