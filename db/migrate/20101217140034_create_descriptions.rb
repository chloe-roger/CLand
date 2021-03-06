class CreateDescriptions < ActiveRecord::Migration
  def self.up
    create_table :descriptions do |t|
      t.text :description
      t.string :image_url
      t.integer :sphere_id

      t.timestamps
    end
  end

  def self.down
    drop_table :descriptions
  end
end
