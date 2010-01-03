class CreateCustomDates < ActiveRecord::Migration
  def self.up
    create_table :custom_dates do |t|
      t.date :date
      t.text :remark
      t.timestamps
    end
    CustomDate.create_translation_table! :remark => :text
  end

  def self.down
    drop_table :custom_dates
  end
end
