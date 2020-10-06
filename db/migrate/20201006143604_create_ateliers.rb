class CreateAteliers < ActiveRecord::Migration[6.0]
  def change
    create_table :ateliers do |t|
      t.string :title
      t.string :description
      t.integer :price

      t.timestamps
    end
  end
end
