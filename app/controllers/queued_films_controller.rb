class QueuedFilmsController < ApplicationController
  before_action :set_queued_film, only: [:show, :update, :destroy]

  # GET /queued_films
  # GET /queued_films.json
  def index
    @queued_films = current_user.queued_films.all

    render json: @queued_films
  end

  # GET /queued_films/1
  # GET /queued_films/1.json
  def show
    render json: @queued_film
  end

  # POST /queued_films
  # POST /queued_films.json
  def create
    @queued_film = current_user.queued_films.build(create_queued_film_params)

    if @queued_film.save
      render json: @queued_film, status: :created, location: @queued_film
    else
      render json: @queued_film.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /queued_films/1
  # PATCH/PUT /queued_films/1.json
  def update
    if @queued_film.update(queued_film_params)
      head :no_content
    else
      render json: @queued_film.errors, status: :unprocessable_entity
    end
  end

  # DELETE /queued_films/1
  # DELETE /queued_films/1.json
  def destroy
    @queued_film.destroy

    head :no_content
  end

  private

  def set_queued_film
    @queued_film = current_user.queued_films.find(params[:id])
  end

  def queued_film_params
    params.require(:queued_film).permit(:order_rank, :movie_id, :user_id)
  end
end
