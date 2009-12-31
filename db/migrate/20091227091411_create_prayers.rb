class CreatePrayers < ActiveRecord::Migration
  def self.up
    create_table :prayers do |t|
      t.integer :custom_date_id, :mp3_file_size
      t.string  :name, :mp3_file_name, :mp3_content_type
      t.datetime :mp3_updated_at
      t.text :text
      t.timestamps
    end
    Prayer.create_translation_table! :name => :string, :text => :text
  end

  def self.down
    drop_table :prayers
    Prayer.drop_translation_table!
  end
end
