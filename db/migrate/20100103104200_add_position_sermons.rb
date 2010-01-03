class AddPositionSermons < ActiveRecord::Migration
  def self.up
    add_column :sermons, :position, :integer
  end

  def self.down
    remove_column :sermons, :position
  end
end
