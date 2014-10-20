class AddBalancesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :paypal_balance, :integer
    add_column :users, :bitcoin_balance, :integer
  end
end
