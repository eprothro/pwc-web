class Album < ActiveRecord::Base
  attr_accessible :cover_asset, :name

  has_many :events, dependent: :destroy

  validates_presence_of :name, :cover_asset
  validates_uniqueness_of :name

  # def to_param
  #   name.parameterize
  # end
end
