class CreateNews < ActiveRecord::Migration
  def self.up
    create_table :news do |t|
      t.string :title
      t.text :body
      t.datetime :created_at
      t.datetime :updated_at
      t.string :author
      t.timestamps
    end
  end

  def self.down
    drop_table :news
  end
end
