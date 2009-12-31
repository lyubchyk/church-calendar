class CustomDate < ActiveRecord::Base
  has_many :apostles, :dependent => :nullify, :order => "position ASC"
  has_many :prayers, :dependent => :nullify, :order => "position ASC"
  has_many :gospels, :dependent => :nullify, :order => "position ASC"
  has_many :troparions, :dependent => :nullify, :order => "position ASC"
  has_one :sermon, :dependent => :nullify
  validates_uniqueness_of :date

  def date_format
    I18n.localize(self.date, {:locale => :ua, :format => :long})
  end
end
