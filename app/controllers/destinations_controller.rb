class DestinationsController < ApplicationController
  def index
    if params[:country]
      country = params[:country]
      @destinations = Destination.search(params[:country])
      json_response(@destinations)
    else
      @destinations = Destination.all
      json_response(@destinations)
    end
  end

  def show
    @destination = Destination.find(params[:id])
    json_response(@destination)
  end

  def create
    @destination = Destination.new(destination_params)
    if @destination.save!
      render status: 201, json: { your_id: 'destination id is: '+ @destination.id.to_s,
                                  country: @destination.country,
                                  city: @destination.city,
                                  description: @destination.description,
                                  message: "Your destination has been created successfully!"
      }
    end
  end

  def update
    @destination = Destination.find(params[:id])
    if @destination.update!(destination_params)
      render status: 202, json: { your_id: 'destination id is: '+ @destination.id.to_s,
                                  country: @destination.country,
                                  city: @destination.city,
                                  description: @destination.description,
                                  message: "Your destination has been updated successfully!"
      }
    end
  end

  def destroy
    @destination = Destination.find(params[:id])
    @destination.destroy
  end

  private
  def destination_params
    params.permit(:country, :city, :description)
  end
end
