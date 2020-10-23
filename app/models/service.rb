class Service < ActiveRecord::Base

  belongs_to :service_group

  validates_presence_of :name, :service_group
  validates_uniqueness_of :slug

  before_validation :set_slug

  def to_param
    name.parameterize
  end

  private

  def set_slug
    self.slug = self.to_param if name_changed?
  end
end
