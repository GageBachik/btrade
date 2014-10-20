class ChangePaypalBalanceFormatInUsers < ActiveRecord::Migration
  def change
  	 change_column :users, :paypal_balance, :decimal, :precision => 8, :scale => 2
  	 change_column :users, :bitcoin_balance, :decimal, :precision => 8, :scale => 2
  end
end
