class AddUserIdToEmployer < ActiveRecord::Migration[5.1]
  def change
    add_reference :employers, :user, foreign_key: true
  end
end
