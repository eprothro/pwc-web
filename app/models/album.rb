class Album < ActiveRecord::Base

  has_many :events, dependent: :destroy

  validates_presence_of :name, :cover_asset
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
