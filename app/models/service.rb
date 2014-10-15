class Service < ActiveRecord::Base
  attr_accessible :name, :description

  belongs_to :service_group
  has_and_belongs_to_many :contacts, class_name: 'Employee'

  before_destroy { contacts.clear }

  validates_presence_of :name, :description, :service_group
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
