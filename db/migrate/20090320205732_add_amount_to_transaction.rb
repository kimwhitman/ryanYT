class AddAmountToTransaction < ActiveRecord::Migration
  def self.up
    change_table :transactions do |t|
      t.integer :amount
    end
  end

  def self.down
    change_table :transactions do |t|
      t.remove :amount
    end
  end
end
