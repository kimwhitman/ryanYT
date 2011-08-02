class AddEmailToPurchase < ActiveRecord::Migration
  def self.up
    add_column :purchases, :email, :string
  end

  def self.down
    t.remove :email
  end
end
