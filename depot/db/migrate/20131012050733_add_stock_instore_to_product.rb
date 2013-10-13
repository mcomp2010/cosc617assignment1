class AddStockInstoreToProduct < ActiveRecord::Migration
  def change
    add_column :products, :stock_instore, :string
  end
end
