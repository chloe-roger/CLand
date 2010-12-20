class CreatePersonnages < ActiveRecord::Migration
  def self.up
    create_table :personnages do |t|
      t.string :name
      t.text :description
      t.integer :sphere_id

      t.timestamps
    end
  end

  def self.down
    drop_table :personnages
  end
end
