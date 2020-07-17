class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.user_events.build(event_params)
    if @event.save
      redirect_to user_path(session[:current_user_id])
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :description, :location, :date)
  end
end
