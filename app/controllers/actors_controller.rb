class ActorsController < ApplicationController
  def index
    @actors = Actor.all
    render :index
  end
  def create
    @actor = Actor.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
      movie_id: params[:movie_id]
      )
      render :show
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
    movie_id: params[:movie_id] || @actor.movie_id
    )
    render :show
  end
  def delete
    @actor = Actor.find_by(id: params[:id])
    @actor.destroy
    render json: "DELETED"
  end
end
