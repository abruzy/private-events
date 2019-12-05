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
    if @event.save
      flash[:success] = "Your event has created successfully"
      redirect_to event_index_path
    else
      flash[:danger] = 'Invalid post, Please try again!'
      render 'new'
    end
  end

  def attend_event
    @attend_event = current_user.events_users.build(params[:id])
    if @attend_event.save
      flash[:success] = "You have successfully applied to this event!"
      redirect_to event_index_path
      else
        flash[:danger] = 'Sorry, Please try again!'
        render 'show'
      end
  end

  def edit
    @event = current_user.events.find(params[:id])
  end

  def update
    @event = current_user.events.find(params[:id])
    if @event.update(event_params)
      flash[:success] = 'Event was successfully updated.'
      redirect_to @event
    else
      flash[:danger] = 'Something went wrong, Please try again!'
      render :edit
    end
  end
  
  private

  def event_params
    params.require(:event).permit(:title, :details, :date, :location)
  end
end
