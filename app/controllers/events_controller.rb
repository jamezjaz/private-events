# Events Controller
class EventsController < ApplicationController
  def index
    @events = Event.all

    @past = Event.all.past_events
    @future = Event.all.future_events
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.event.build(event_params)
    redirect_to user_path(session[:current_user_id]) if @event.save
  end

  # def past
  #   @events = Event.all.where(' date < ? ', Date.today)
  #   @events
  # end

  private

  def event_params
    params.require(:event).permit(:name, :description, :location, :date)
  end
end
