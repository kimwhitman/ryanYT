class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :login, :length => 255
      t.string :email, :length => 255
      t.string :name, :length => 255
      t.string :remember_token, :length => 255
      t.string :crypted_password, :length => 40
      t.string :crypted_password, :length => 40
      t.datetime :remember_token_expires_at
      t.timestamps
      t.integer :account_id
      t.boolean :admin
    end
  end

  def self.down
    drop_table :users
  end
end
