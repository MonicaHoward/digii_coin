class CreateCryptos < ActiveRecord::Migration[5.1]
  def change
    create_table :cryptos do |t|
      t.string :symbol
      t.integer :user_id
      t.decimal :purchase_price
      t.decimal :amount_purchased

      t.timestamps
    end
    add_index :cryptos, :user_id
  end
end
