class AddUserToAteliers < ActiveRecord::Migration[6.0]
  def change
    add_reference :ateliers, :user, foreign_key: true
  end
end
