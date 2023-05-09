class ActivitiesController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @activity = @event.activities.create(activity_params)
    redirect_to event_path(@event)
  end

  private
  def activity_params
    params.require(:activity).permit(:name)
  end
end
