class EventsController < ApplicationController
  caches_action :show unless Rails.env.development?

  def show
    @event = Event.find(params[:id])
  end
end
