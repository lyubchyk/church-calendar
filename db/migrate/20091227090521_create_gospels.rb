class CreateGospels < ActiveRecord::Migration
  def self.up
    create_table :gospels do |t|
      t.integer :custom_date_id
      t.string :name
      t.text :text
      t.timestamps
    end
    Gospel.create_translation_table! :name => :string, :text => :text
  end

  def self.down
    drop_table :gospels
    Gospel.drop_translation_table!
  end
end
