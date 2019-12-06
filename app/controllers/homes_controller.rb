class HomesController < ApplicationController
  def index
    @upcoming_events = Event.upcoming
  end
end
