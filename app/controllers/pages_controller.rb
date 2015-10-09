class PagesController < ApplicationController
  caches_action :home unless Rails.env.development?

  def home
    dir = if Rails.env.production?
      'public/assets/slideshow/*.jpg'
    else
      'app/assets/images/slideshow/*.jpg'
    end

    @slides = Dir[dir].map{|f| f.sub('public','').sub('app/assets/images', 'assets') }.sort
    @employees = Employee.order('created_at ASC')
  end

  def news
    sleep(5)
  end

  def community
  end

  def contact
  end

  def careers
  end

  def portal
  end
end