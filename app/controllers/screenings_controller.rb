class ScreeningsController < ProtectedController
  before_action :set_screening, only: [:show, :update, :destroy]

  # GET /screenings
  # GET /screenings.json
  def index
    # @screenings = Screening.all
    @screenings = current_user.screenings.all

    render json: @screenings
  end

  # GET /screenings/1
  # GET /screenings/1.json
  def show
    render json: @screening
  end

  # POST /screenings
  # POST /screenings.json
  def create
    # @screening = Screening.new(create_screening_params)
    @screening = current_user.screenings.build(create_screening_params)

    if @screening.save
      render json: @screening, status: :created, location: @screening
    else
      render json: @screening.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /screenings/1
  # PATCH/PUT /screenings/1.json
  def update
    @screening = Screening.find(params[:id])

    if @screening.update(update_screening_params)
      head :no_content
    else
      render json: @screening.errors, status: :unprocessable_entity
    end
  end

  # DELETE /screenings/1
  # DELETE /screenings/1.json
  def destroy
    @screening.destroy

    head :no_content
  end

  private

  def set_screening
    @screening = current_user.screenings.find(params[:id])
  end

  # def set_screening
  #   @screening = Screening.find(params[:id])
  # end

  def create_screening_params
    params.require(:screening).permit(:rating,
                                      :watched_recently,
                                      :user_id,
                                      :movie_id)
  end

  def update_screening_params
    params.require(:screening).permit(:rating,
                                      :watched_recently)
  end
end
