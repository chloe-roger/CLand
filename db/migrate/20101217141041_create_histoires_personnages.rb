class CreateHistoiresPersonnages < ActiveRecord::Migration
  def self.up
    create_table :histoires_personnages, :id => false do |t|
      t.references :histoire, :null => false
      t.references :personnage, :null => false
    end
    add_index :histoires_personnages, :histoire_id
    add_index :histoires_personnages, :personnage_id
    add_index :histoires_personnages, [:histoire_id, :personnage_id], :unique => true
  end

  def self.down
    drop_table :histoires_personnages
  end
end
