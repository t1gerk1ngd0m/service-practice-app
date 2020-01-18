class CreateBankAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :bank_accounts do |t|
      t.integer :deposit_amount, null: false, defaunt: 0
      t.integer :currency,       null: false, defaunt: 0
      t.references :user,        null: false, foreign_key: true

      t.timestamps
    end
  end
end
