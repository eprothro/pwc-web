class ApplicationController < ActionController::Base
  protect_from_forgery

  unless Rails.application.config.consider_all_requests_local
    rescue_from Exception, with: :generic_error
  end

  private

  def generic_error(exception)
    return render "pages/error", status: 500
  end
end
