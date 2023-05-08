class MembersController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @member = @event.members.create(member_params)
    redirect_to event_path(@event)
  end

  private
  def member_params
    params.require(:member).permit(:name, :age, :committee)
  end
end
