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
      @review = Review.create(rating: review_params[:rating], content: review_params[:content], user_id: @user.first.id, destination_id: @destination.id)
      render status: 201, json: { message: "Your review has been created successfully!",
                                  id: @review.id,
                                  rating: @review.rating,
                                  content: @review.content,
                                  user_id: @review.user_id,
                                  destination_id: @review.content
      }
    else
      render status: 403, json: {
        message: "Please enter a correct API Key!"
      }
    end
  end

  def update
    @review = Review.find(params[:id])
    if @review.user_id == User.where(key: params[:key])
      @review.update(review_params)
      render status: 201, json: { message: "Your review has been updated successfully!",
                                  id: @review.id,
                                  rating: @review.rating,
                                  content: @review.content,
                                  user_id: @review.user_id,
                                  destination_id: @review.content
      }
    else
      render status: 403, json: {
        message: "You must be the creator of the review to edit it!"
      }
    end
  end

  def destroy
    @destination = Destination.find(params[:id])
    @destination.destroy
  end

  private

  def review_params
    params.permit(:rating, :content, :user_id, :destination_id)
  end
end
