class ActorsController < ApplicationController
  def index
    @actors = Actor.all
    render :index
  end
  def show
    the_id = params[:id]
    @actor = Actor.find_by(id: params[:id])
    render :show
  end
  def update
    render json: "hello"
  end
end
