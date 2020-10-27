class AddDateToFormations < ActiveRecord::Migration[6.0]
  def change
    add_column :formations, :date, :datetime
  end
end
