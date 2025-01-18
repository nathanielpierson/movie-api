class ActorsController < ApplicationController
  def index
    @actors = Actor.all
    render :index
  end
  def show
    render json: "blegh"
    # the_id = params[:id]
  end
  def update
    render json: "hello"
  end
end
