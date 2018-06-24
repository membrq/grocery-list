class ChangeDataTypeForPrice < ActiveRecord::Migration[5.1]
  def change
    change_column :items, :price, :decimal, :precision => 2, :scale => 10
  end
end
