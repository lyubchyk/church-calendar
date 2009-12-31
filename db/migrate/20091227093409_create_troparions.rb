class CreateTroparions < ActiveRecord::Migration
  def self.up
    create_table :troparions do |t|
      t.integer :custom_date_id, :mp3_file_size
      t.string :name, :mp3_file_name, :mp3_content_type
      t.text :text
      t.datetime :mp3_updated_at
      t.timestamps
    end
    Troparion.create_translation_table! :name => :string, :text => :text
  end

  def self.down
    drop_table :troparions
    Troparion.drop_translation_table!
  end
end
