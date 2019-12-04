class EventsController < ApplicationController
  before_action :require_login, only: %i[new create]

  def index
    @events = Event.all
  end

  def new
    @event = current_user.events.new
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.new(event_params)
    @event.user_id = current_user.id

    if @event.save
      flash[:success] = "Your event has created successfully"
      redirect_to root_path
    else
      flash[:danger] = 'Invalid post, Please try again!'
      render 'new'
    end
  end
  
  private

  def event_params
    params.require(:event).permit(:title, :details, :date)
  end
end
