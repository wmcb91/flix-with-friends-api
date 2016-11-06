class ProfilesController < ProtectedController
  before_action :set_profile, only: [:show, :update, :destroy]

  # GET /profiles
  # GET /profiles.json
  def index
    @profiles = Profile.all

    render json: @profiles
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
    render json: @profile
  end

  # POST /profiles
  # POST /profiles.json
  def create
    @profile = current_user.build_profile(create_profile_params)

    if @profile.save
      render json: @profile, status: :created, location: @profile
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    @profile = current_user.profiles.build(profile_params)

    if @profile.update(update_profile_params)
      head :no_content
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @profile.destroy

    head :no_content
  end

  private

  def set_profile
    @profile = current_user.profile
  end

  def create_profile_params
    params.require(:profile).permit(:user_name,
                                    :given_name,
                                    :surname,
                                    :user_id)
  end

  def update_profile_params
    params.require(:profile).permit(:given_name,
                                    :surname)
  end
end
