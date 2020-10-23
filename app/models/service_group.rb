class ServiceGroup < ActiveRecord::Base

  has_many :services, dependent: :destroy

  validates_presence_of :name

  def to_param
    name.parameterize
  end

end
