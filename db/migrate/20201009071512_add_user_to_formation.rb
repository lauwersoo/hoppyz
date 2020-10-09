class AddUserToFormation < ActiveRecord::Migration[6.0]
  def change
    add_reference :formations, :user, foreign_key: true
  end
end
