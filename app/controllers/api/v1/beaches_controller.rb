class Api::V1::BeachesController < ApplicationController
    before_action :set_beach, only: [:show, :update, :destroy]

   # GET /beaches
  def index
    @beaches = Beach.all
  
    render json: @beaches, except: [:created_at, :updated_at], include: :comments
  end
  
#    # GET /beaches/1
  def show
    render json: @beach, except: [:created_at, :updated_at], include: :comments
  end
  
#    # POST /beaches
  def create
    @beach = Beach.new(beach_params)
  
    if @beach.save
      render json: {
        status: 201,
        beach: @beach
      }, status: :created, location: api_v1_beach_path(@beach)
    else
      render json: {
        status: 422,
        errors: @beach.errors.full_messages.join(", ")
      }, status: :unprocessable_entity
    end
  end
  
#    # PATCH/PUT /beaches/1
#   def update
#     if @beach.update(beach_params)
#       render json: @beach
#     else
#       render json: @beach.errors, status: :unprocessable_entity
#     end
#   end
  
#    # DELETE /beaches/1
  def destroy
   if @beach.destroy
    render json: {message: "Beach deleted", beach: @beach}
   else
    render json: {message: "Couldn't delete" }
   end 
  end
  
   private
   # Use callbacks to share common setup or constraints between actions.
  def set_beach
    @beach = Beach.find(params[:id])
  end
  
   # Only allow a list of trusted parameters through.
  def beach_params
    params.require(:beach).permit(:name, :country)
  end
  
end
