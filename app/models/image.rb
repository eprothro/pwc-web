class Image < ActiveRecord::Base
  attr_accessible :asset

  belongs_to :event

  validates_presence_of :asset, :event

  # def to_param
  #   name.parameterize
  # end
end
