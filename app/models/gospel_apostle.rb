class GospelApostle < ActiveRecord::Base
  translates :name, :text
  belongs_to :custom_date
  acts_as_list :scope => :custom_date
  validates_presence_of :name, :text, :message => "має бути присутня"
  validates_uniqueness_of :name, :message => "має бути унікальна"

  def readonly?
    false
  end
end
