class AddPositionColumns < ActiveRecord::Migration
  def self.up
    add_column :apostles, :position, :integer
    add_column :gospels, :position, :integer
    add_column :prayers, :position, :integer
    add_column :troparions, :position, :integer
  end

  def self.down
    remove_column :apostles, :position
    remove_column :gospels, :position
    remove_column :prayers, :position
    remove_column :troparions, :position
  end
end
