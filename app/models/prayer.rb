class Prayer < ActiveRecord::Base
  translates :name, :text
  belongs_to :custom_date
  acts_as_list :scope => :custom_date
  has_attached_file :mp3
  validates_attachment_content_type :mp3, :content_type => [ 'audio/mpg' ],
                                    :message => 'файл має бути формату .mp3', :if => Proc.new {|w| w.mp3.file? }
  validates_attachment_size :mp3, :less_than => 10.megabytes, :if => Proc.new {|w| w.mp3.file? }
  validates_presence_of :name, :text, :message => "має бути присутня"
  validates_uniqueness_of :name, :message => "має бути унікальна"

  def readonly?
    false
  end
end
