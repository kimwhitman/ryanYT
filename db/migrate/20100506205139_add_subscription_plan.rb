class AddSubscriptionPlan < ActiveRecord::Migration
  def self.up
    create_table :subscription_plans do |t|
      t.string :name
      t.decimal :amount, :precision => 10, :scale => 2
      t.timestamps
      t.integer :user_limit
      t.integer :renewal_period, :default => 1
      t.decimal :setup_amount, :precision => 10, :scale => 2
      t.integer :trial_period, :default => 1
      t.string :trial_period_type
      t.integer :transitions_to_subscription_plan_id
      t.boolean :generates_ambassador_reward, :null => false, :default => 0
      t.string :internal_name
    end
    SubscriptionPlan.create(:name => 'Spring Signup Special', :renewal_period => 4, :amount => 34.95, :trial_period => 0)
  end

  def self.down
    subscription_plan = SubscriptionPlan.find_by_name('Spring Signup Special')
  end
end
