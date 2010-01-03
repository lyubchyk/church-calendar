class AddPositionGospelApostles < ActiveRecord::Migration
  def self.up
    add_column :gospel_apostles, :position, :integer
  end

  def self.down
    remove_column :gospel_apostles, :position
  end
end
