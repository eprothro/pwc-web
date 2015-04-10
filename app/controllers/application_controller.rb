class ApplicationController < ActionController::Base
  protect_from_forgery

  unless Rails.application.config.consider_all_requests_local
    rescue_from Exception, with: :generic_error
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  end

  private

  def generic_error(exception)
    return render "pages/error", status: 500
  end
  def record_not_found(exception)
    return render "pages/not_found", status: 404
  end
end
