class ServiceGroup < ActiveRecord::Base
  attr_accessible :name

  has_many :services, dependent: :destroy

  validates_presence_of :name

  def to_param
    name.parameterize
  end

end
