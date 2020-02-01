class SheltersController < ApplicationController

  def index
    @shelters = Shelter.all
    json_response(@shelters)
  end

  def show
    @shelter = Shelter.find(params[:id])
    json_response(@shelter)
  end

  def create
    @shelter = Shelter.create!(shelter_params)
    json_response(@shelter, :created)
  end

  def update
    @shelter = Shelter.find(params[:id])
    @shelter.update!(shelter_params)
    render status: 200, json: {
      message: "Address updated"
    }
  end


  def destroy
    @shelter = Shelter.find(params[:id])
    @shelter.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def shelter_params
    params.permit(:street_address)
  end
end
