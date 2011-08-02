class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.belongs_to :video, :null => false
      t.belongs_to :user, :null => false
      t.boolean :is_public, :null => false
      t.string :title, :length => 255
      t.text :content, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end