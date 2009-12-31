class Gospel < ActiveRecord::Base
  translates :name, :text
  belongs_to :custom_date
  acts_as_list :scope => :custom_date
  validates_presence_of :name, :text
  validates_uniqueness_of :name

  def readonly?
    false
  end
end
