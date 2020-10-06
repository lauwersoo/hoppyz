class CreateBoxes < ActiveRecord::Migration[6.0]
  def change
    create_table :boxes do |t|
      t.string :title
      t.string :description
      t.integer :price

      t.timestamps
    end
  end
end
