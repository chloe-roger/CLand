class CreateHistoires < ActiveRecord::Migration
  def self.up
    create_table :histoires do |t|
      t.string :title
      t.text :description
      t.string :author
      t.integer :sphere_id

      t.timestamps
    end
  end

  def self.down
    drop_table :histoires
  end
end
