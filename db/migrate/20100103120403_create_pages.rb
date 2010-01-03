class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.string :name
      t.text :text
      t.timestamps
    end
    Page.create_translation_table! :name => :string, :text => :text
  end

  def self.down
    drop_table :pages
    Page.drop_translation_table!
  end
end
