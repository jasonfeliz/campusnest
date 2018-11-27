class UserinterestsController < ApplicationController
  before_action :set_userinterest, only: [:show, :update, :destroy]

  # GET /userinterests
  def index
    @userinterests = Userinterest.all

    render json: @userinterests
  end

  # GET /userinterests/1
  def show
    render json: @userinterest
  end

  # POST /userinterests
  def create
    @userinterest = Userinterest.new(userinterest_params)

    if @userinterest.save
      render json: @userinterest, status: :created, location: @userinterest
    else
      render json: @userinterest.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /userinterests/1
  def update
    if @userinterest.update(userinterest_params)
      render json: @userinterest
    else
      render json: @userinterest.errors, status: :unprocessable_entity
    end
  end

  # DELETE /userinterests/1
  def destroy
    @userinterest.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userinterest
      @userinterest = Userinterest.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def userinterest_params
      params.require(:userinterest).permit(:user_id, :interest_id)
    end
end
