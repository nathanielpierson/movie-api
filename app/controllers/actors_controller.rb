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
    @actor = Actor.find_by(id: params[:id])
    # render json: @actor
    @actor.update(
    first_name: params[:first_name] || @actor.first_name,
    last_name: params[:last_name] || @actor.last_name,
    known_for: params[:known_for] || @actor.known_for,
    )
    render :show
  end
end
