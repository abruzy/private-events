class EventsController < ApplicationController
  before_action :require_login, only: %i[new create attend_event]
  before_action :find_event, only: %i[edit update attendees]

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
    if @event.save
      flash[:success] = 'Your event has created successfully'
      redirect_to event_index_path
    else
      flash[:danger] = 'Invalid post, Please try again!'
      render 'new'
    end
  end

  def edit
  end

  def update
    if @event.update(event_params)
      flash[:success] = 'Event was successfully updated.'
      redirect_to @event
    else
      flash[:danger] = 'Something went wrong, Please try again!'
      render :edit
    end
  end

  def attend_event
    @attend_event = EventUser.new
    @attend_event.event_id = params[:id]
    @attend_event.user_id = current_user.id
    if @attend_event.save
      flash[:success] = 'You have successfully applied to this event!'
      redirect_to event_index_path
    else
      flash[:danger] = 'Sorry, Please try again!'
      render 'show'
    end
  end

  def attendees
  end

  private

  def find_event
   @event = current_user.events.find(params[:id])
  end
  
  def event_params
    params.require(:event).permit(:title, :details, :date, :location)
  end
end
