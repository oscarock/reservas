class CreateStockpiles < ActiveRecord::Migration[6.0]
  def change
    create_table :stockpiles do |t|
      t.string :name
      t.string :document
      t.string :email
      t.belongs_to :movie, index: true, foreign_key: true
      t.timestamps
    end
  end
end
