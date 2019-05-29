class CreateEmployers < ActiveRecord::Migration[5.1]
  def change
    create_table :employers do |t|
      t.string :title
      t.string :company
      t.integer :phone
      t.string :city
      t.string :placeofwork
      t.string :employment
      t.string :requirements
      t.string :descriptionsofwork
      t.string :requirementsforcandiate
      t.string :functional
      t.string :weoffer

      t.timestamps
    end
  end
end
