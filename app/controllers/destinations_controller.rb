class DestinationsController < ApplicationController
  def index
    @destinations = Destination.all
    json_response(@destinations)
  end

  def show
    @destination = Destination.find(params[:id])
    @reviews = @destination.reviews
    json_response(@destination)
  end

  def create
    @destination = Destination.new(destination_params)
    if @destination.save!
      render status: 201, json: {
        message: "Your destination has been created successfully!"
      }
    end
  end

  def update
    @destination = Destination.find(params[:id])
    if @destination.update!(destination_params)
      render status: 202, json: {
        message: "Your destination has been updated successfully!"
      }
    end
  end

  def destroy
    @destination = Destination.find(params[:id])
    @destination.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def destination_params
    params.permit(:country, :city, :description)
  end
end
