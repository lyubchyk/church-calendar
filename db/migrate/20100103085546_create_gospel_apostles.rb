class CreateGospelApostles < ActiveRecord::Migration
  def self.up
    create_table :gospel_apostles do |t|
      t.integer :custom_date_id
      t.string :name
      t.text :text
      t.timestamps
    end
    GospelApostle.create_translation_table! :name => :string, :text => :text
  end

  def self.down
    drop_table :gospel_apostles
    GospelApostle.drop_translation_table!
  end
end
