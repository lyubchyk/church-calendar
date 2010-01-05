class Static < ActiveRecord::Base
  translates :name, :text
  acts_as_tree :order => :position
  acts_as_list :scope => :parent
  validates_presence_of :name, :message => "має бути присутня"
  validates_uniqueness_of :parent_id, :message => "Тільки одна сторінка може бути головною, виберіть поле 'Предок'", :if => Proc.new {|w| w.parent_id.nil?}


end
