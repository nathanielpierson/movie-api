class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render :index
  end
  def show
    @movie = Movie.find_by(id: params[:id])
    render :show
  end
  def create
    @movie = Movie.create(
      title: params[:title],
      year: params[:year],
      plot: params[:plot]
    )
    render :show
  end
end
