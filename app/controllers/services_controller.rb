class ServicesController < ApplicationController
  caches_action :index, :show unless Rails.env.development?

  def index
    @service_groups = ServiceGroup.all
  end

  def show
    @service_groups = ServiceGroup.all
    @service = Service.find_by_slug(params[:id])
  end
end
