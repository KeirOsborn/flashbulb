class Page < ActiveRecord::Base
  attr_accessible :end_time, :name, :start_time

  def to_param
  	name

  end
end
