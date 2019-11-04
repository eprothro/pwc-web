class PagesController < ApplicationController

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
  end

  def community
  end

  def contact
  end

  def careers
  end

  def portal
  end

  def header
  end

  def email_signature
    render layout: "html_tag"
  end

  def download_email_signature
    response.headers['Content-Type'] = 'text/html'
    response.headers['Content-Disposition'] = "attachment; filename=PW_email_signature_v1alpha1.htm"
    render 'email_signature', layout: false
  end
end