class EventsController < ApplicationController
  caches_action :show unless Rails.env.development?

  def show
    @event = Event.find_by_slug(params[:id])
  end
end
