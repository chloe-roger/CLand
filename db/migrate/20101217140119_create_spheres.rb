class CreateSpheres < ActiveRecord::Migration
  def self.up
    create_table :spheres do |t|
      t.string :title
      t.string :image_url
      t.integer :description_id

      t.timestamps
    end
  end

  def self.down
    drop_table :spheres
  end
end
