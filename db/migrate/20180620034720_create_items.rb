class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.integer :quantity
      t.string :item_type
      t.integer :priority
      t.boolean :purchased

      t.timestamps
    end
  end
end
