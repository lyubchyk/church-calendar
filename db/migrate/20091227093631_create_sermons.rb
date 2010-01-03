class CreateSermons < ActiveRecord::Migration
  def self.up
    create_table :sermons do |t|
      t.integer :custom_date_id
      t.string :name
      t.text :text
      t.timestamps
    end
    Sermon.create_translation_table! :name => :string, :text => :text
  end

  def self.down
    drop_table :sermons
    Sermon.drop_translation_table!
  end
end
