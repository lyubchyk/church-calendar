class Static < ActiveRecord::Base
  translates :name, :text
  acts_as_tree :order => "position ASC"
  validates_presence_of :name



  def before_save
    #checking if we got any root there
    errors.add_to_base("Тільки одна сторінка може бути головною, виберіть поле 'Предок'") if self.parent_id.nil?
  end
end
