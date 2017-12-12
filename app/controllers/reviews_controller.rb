class ReviewsController < ApplicationController
  def index
    @destinations = Destination.find(params[:destination_id])
    @reviews = @destinations.reviews
    json_response(@reviews)
  end

  def show
    @destination = Destination.find(params[:destination_id])
    @review = @destination.reviews.find(params[:id])
    json_response(@review)
  end

  def create
    if User.authenticate(params[:key])
      @destination = Destination.find(params[:destination_id])
      @user = User.where(key: params[:key])
      @review = Review.create(rating: destination_params[:rating], content: destination_params[:content], user_id: @user.first.id, destination_id: @destination.id)
      json_response(@destination)
    end
  end

  def update
    @destination = Destination.find(params[:id])
    @destination.update(destination_params)
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
    params.permit(:rating, :content, :user_id, :destination_id)
  end
end
