class AddDateToAteliers < ActiveRecord::Migration[6.0]
  def change
    add_column :ateliers, :date, :datetime
  end
end
