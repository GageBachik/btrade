class AddFulfilledToTrades < ActiveRecord::Migration
  def change
    add_column :trades, :fulfilled, :boolean
  end
end
