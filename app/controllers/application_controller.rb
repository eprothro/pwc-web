class ApplicationController < ActionController::Base
  protect_from_forgery

  http_basic_authenticate_with name: ENV['BASIC_AUTH_USER'] || 'pwc',
    password: ENV['BASIC_AUTH_PASSWORD'] || 'pwc',
    if: -> { ENV['REQUIRE_AUTH'] == 'true' }

  unless Rails.application.config.consider_all_requests_local
    rescue_from Exception, with: :generic_error
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  end

  private

  def generic_error(exception)
    Raven.capture_exception(exception)
    return render "pages/error", status: 500
  end
  def record_not_found(exception)
    return render "pages/not_found", status: 404
  end
end
