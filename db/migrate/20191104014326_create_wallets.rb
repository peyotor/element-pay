class CreateWallets < ActiveRecord::Migration[5.2]
  def change
    create_table :wallets do |t|
      t.integer :money
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
