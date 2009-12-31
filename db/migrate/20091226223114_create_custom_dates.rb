class CreateCustomDates < ActiveRecord::Migration
  def self.up
    create_table :custom_dates do |t|
      t.date :date
      t.timestamps
    end
  end

  def self.down
    drop_table :custom_dates
  end
end
