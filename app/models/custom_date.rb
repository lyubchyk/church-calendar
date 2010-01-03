class CustomDate < ActiveRecord::Base
  translates :remark
  has_many :apostles, :dependent => :nullify, :order => "position ASC"
  has_many :prayers, :dependent => :nullify, :order => "position ASC"
  has_many :gospels, :dependent => :nullify, :order => "position ASC"
  has_many :troparions, :dependent => :nullify, :order => "position ASC"
  has_many :gospel_apostles, :dependent => :nullify, :order => "position ASC"

  has_many :sermons, :dependent => :nullify, :order => "position ASC"
  
  validates_uniqueness_of :date, :message => "дата має бути унікальна"

  def date_format
    I18n.localize(self.date, {:locale => :ua, :format => :long})
  end
end
