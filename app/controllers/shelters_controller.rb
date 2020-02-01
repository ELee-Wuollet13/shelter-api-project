class SheltersController < ApplicationController

  def index
    @shelters = {}
    json_response(@shelters)
  end

  def show
    @shelter = Shelter.find(params[:id])
    json_response(@shelter)
  end

  def create
    @shelter = Shelter.create(shelter_params)
    json_response(@shelter)
  end

  def update
    @shelter = Shelter.find(params[:id])
    @shelter.update(shelter_params)
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
