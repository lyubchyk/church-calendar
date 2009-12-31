class CreateApostles < ActiveRecord::Migration
  def self.up
    create_table :apostles do |t|
      t.integer :custom_date_id, :avatar_file_size
      t.string :name, :avatar_file_name, :avatar_content_type
      t.datetime :avatar_updated_at
      t.text :text
      t.timestamps
    end
    Apostle.create_translation_table! :name => :string, :text => :text

  end

  def self.down
    drop_table :apostles
    Apostle.drop_translation_table!
  end
end
