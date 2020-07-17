class EventsController < ApplicationController
  def index
    # @events = Event.all
    @events = Event.all.future_events
    @events = Event.all.past_events
  end

  def show
    @event = Event.find(params[:id])
    # @previous_events = @event.event.future_events
    # @upcoming_events = @event.event.past_events
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.event.build(event_params)
    if @event.save
      redirect_to user_path(session[:current_user_id])
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :description, :location, :date)
  end
end
