class HomesController < ApplicationController
  def index
    @events = Event.all
  end
end
