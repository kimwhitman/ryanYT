class AdditionalSubscriptionColumns < ActiveRecord::Migration
  def self.up
    create_table :subscriptions do |t|
      t.decimal :amount, :precision => 10, :scale => 2
      t.datetime :next_renewal_at
      t.string :card_number
      t.string :card_expiration
      t.timestamps
      t.string :state
      t.integer :subscription_plan_id
      t.integer :account_id
      t.integer :user_limit
      t.integer :renewal_period
      t.string :billing_id
      t.integer :saved_subscription_plan_id, :null => true
    end
  end

  def self.down
    change_table :subscriptions do |t|
      t.remove :saved_subscription_plan_id
    end
  end
end
