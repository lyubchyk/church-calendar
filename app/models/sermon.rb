class Sermon < ActiveRecord::Base
  translates :name, :text
  belongs_to :custom_date
  validates_uniqueness_of :custom_date_id, :allow_nil => true
  validates_presence_of :name, :text
  validates_uniqueness_of :name

  def readonly?
    false
  end
end
