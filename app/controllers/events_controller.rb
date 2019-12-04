class EventsController < ApplicationController
  before_action :require_login, only: %i[new create]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    @event = current_user.events.build(event_params)
    #  @event.creator_id = current_user.id

    if @event.save
      flash[:success] = "Your event has created successfully"
      redirect_to event_index_path
    else
      flash[:danger] = 'Invalid post, Please try again!'
      render 'new'
    end
  end
  
  private

  def event_params
    params.require(:event).permit(:title, :details, :date, :location)
  end
end
