# frozen_string_literal: true

class HomesController < ApplicationController
  def index
    @upcoming_events = Event.upcoming
  end
end
