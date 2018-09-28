class HomeController < ApplicationController
  def index
    @events = Event.where(featured: true)
  end
end
