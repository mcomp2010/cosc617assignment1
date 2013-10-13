class AddStockOnlineToProduct < ActiveRecord::Migration
  def change
    add_column :products, :stock_online, :string
  end
end
