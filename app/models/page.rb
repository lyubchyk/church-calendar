class Page < ActiveRecord::Base
  translates :name, :text
  validates_presence_of :name, :text, :message => "має бути пристунім"
  
end
