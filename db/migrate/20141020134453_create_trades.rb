class CreateTrades < ActiveRecord::Migration
  def change
    create_table :trades do |t|
      t.decimal :bitcoin
      t.decimal :usd
      t.boolean :buy
      t.references :user, index: true

      t.timestamps
    end
    add_index :trades, [:user_id, :created_at]
  end
end
