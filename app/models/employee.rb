class Employee < ActiveRecord::Base
  attr_accessible :name, :email, :bio, :extension, :started_on, :preferred_name, :image_url, :suffix, :subtitle

  before_validation :set_slug, if: 'slug.blank?'
  validates_uniqueness_of :name, :email, :slug

  has_and_belongs_to_many :services

  before_destroy { services.clear }

  def first_name
    preferred_name || name.split(' ')[0]
  end

  def image_title
    title = first_name
    title = "#{title}, #{suffix}" if suffix.present?
    title
  end

  def to_param
    self.slug
  end

  def email_address
    email + "@pw-tx.com"
  end

  private
    def set_slug
      self.slug = self.name.parameterize
    end

end
