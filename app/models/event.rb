class Event < ActiveRecord::Base
  attr_accessible :cover_asset, :name

  belongs_to :album
  has_many :images, dependent: :destroy

  validates_presence_of :name, :cover_asset, :album
  validates_uniqueness_of :name

  # def to_param
  #   name.parameterize
  # end
end
