class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.decimal :price, :precision => 8, :scale => 2
      t.integer :quantity
      t.string :item_type
      t.integer :priority
      t.boolean :purchased

      t.timestamps
    end
  end
end
