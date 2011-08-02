class AddStartDateAndEndDateToSubscriptionPayments < ActiveRecord::Migration
  
  def self.up
    create_table :subscription_payments do |t|
      t.integer :account_id
      t.integer :subscription_id
      t.decimal :amount, :precision => 10, :scale => 2
      t.string :transaction_id
      t.timestamps
      t.boolean :setup
      t.datetime :start_date
      t.datetime :end_date
    end
  end
  
  def self.down
    remove_column :subscription_payments, :end_date
    remove_column :subscription_payments, :start_date
  end
end
