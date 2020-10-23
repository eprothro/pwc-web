class Image < ActiveRecord::Base

  belongs_to :event

  validates_presence_of :asset, :event

  # def to_param
  #   name.parameterize
  # end
end
