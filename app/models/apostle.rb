class Apostle < ActiveRecord::Base
  translates :name, :text
  belongs_to :custom_date
  acts_as_list :scope => :custom_date
  has_attached_file :avatar, :styles => { :croped => "250x250#" }, :default_url => "/images/missing/apostles_missing.jpg"
  validates_presence_of :name, :text
  validates_uniqueness_of :name

  def readonly?
    false
  end

end
