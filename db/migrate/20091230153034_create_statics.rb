class CreateStatics < ActiveRecord::Migration
  def self.up
    create_table :statics do |t|
      t.integer :parent_id, :position
      t.string :name
      t.text :text
      t.timestamps
    end
    Static.create_translation_table! :name => :string, :text => :text
  end

  def self.down
    drop_table :statics
    Static.drop_translation_table!
  end
end
