class Event < ActiveRecord::Base
  attr_accessible :cover_asset, :name

  belongs_to :album
  has_many :images, dependent: :destroy

  validates_presence_of :name, :cover_asset, :album
  validates_uniqueness_of :name, :slug

  before_validation :generate_slug, if: 'slug.blank?'

  def to_param
    slug
  end

  protected

  def generate_slug
    self.slug = name.parameterize
  end
end
