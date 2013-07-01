class Page < ActiveRecord::Base
  attr_accessible :end_time, :name, :start_time

  validates :name, :presence => :true
  validates :name, length: { maximum: 100 }
  validates :name, uniqueness: true
  #validates_datetime :end_time, :on_or_after => :start_time
  #validates_datetime :start_time, :on_or_after => :current_time

  def to_param
  	name
  end
end
