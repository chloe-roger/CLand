class CreateBillets < ActiveRecord::Migration
  def self.up
    create_table :billets do |t|
      t.string :title
      t.text :body
      t.string :author
      t.string :image_url

      t.timestamps
    end
  end

  def self.down
    drop_table :billets
  end
end
