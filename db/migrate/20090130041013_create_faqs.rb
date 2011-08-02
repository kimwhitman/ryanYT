class CreateFaqs < ActiveRecord::Migration
  def self.up
    create_table :faqs do |t|
      t.text :question, :null => false
      t.text :answer, :null => false
      t.belongs_to :faq_category
      t.timestamps
    end
  end

  def self.down
    drop_table :faqs
  end
end