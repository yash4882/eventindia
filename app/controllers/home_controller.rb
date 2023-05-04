class HomeController < ApplicationController
  def index
    @q = Event.ransack(params[:q])
    @events = @q.result(distinct: true).page(params[:page])
    @users = User.all
  end

  def about
    @q = Event.ransack(params[:q])
    @events = @q.result(distinct: true).page(params[:page])
  end

  def contact
    @q = Event.ransack(params[:q])
    @events = @q.result(distinct: true).page(params[:page])
  end
end
