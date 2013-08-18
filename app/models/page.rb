class Page < ActiveRecord::Base
  attr_accessible :end_time, :name, :start_time, :text

  validates :name, :presence => :true
  validates :name, length: { maximum: 100 }
  validates :name, uniqueness: true
  validates :end_time, :date => {:after => Proc.new { Time.now }, :before => Proc.new { Time.now + 1.day } }

  def to_param
  	name
  end
end
