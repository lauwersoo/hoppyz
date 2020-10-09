class AddUserToBoxes < ActiveRecord::Migration[6.0]
  def change
    add_reference :boxes, :user, foreign_key: true
  end
end
