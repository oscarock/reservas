class MoviesController < ApplicationController
  protect_from_forgery except: :create

  def index
    if params[:start_date].present? || params[:end_date].present?
      start_date = params[:start_date].to_date.beginning_of_day
      end_date = params[:end_date].to_date.end_of_day
      @movies = Movies.where("date(created_at) BETWEEN ? AND ? ", start_date, end_date)
    else
      @movies = Movies.all
    end

    render json: @movies
  end

  def create
    @movie = Movies.new(movie_params)

    if @movie.save
      render json: @movie, status: :created, location: @movie
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end
  
  def show
    @movies = Movies.find(params[:id])
    render json: @movies
  end

  private

  def movie_params
    params.require(:movie).permit(:name, :description, :url_image)
  end
end
