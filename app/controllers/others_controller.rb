class OthersController < ApplicationController

  def index
    @others = Other.all
    json_response(@others)
  end

  def show
    @other = Other.find(params[:id])
    json_response(@other)
  end

  def create
    @other = Other.create!(other_params)
    json_response(@other, :created)
  end

  def update
    @other = Other.find(params[:id])
    @other.update!(other_params)
    render status: 200, json: {
      message: "Address updated"
    }
  end


  def destroy
    @other = Other.find(params[:id])
    @other.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def other_params
    params.permit(:street_address)
  end
end
