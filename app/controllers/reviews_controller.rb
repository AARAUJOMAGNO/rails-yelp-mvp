class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
    @review.restaurant = @restaurant
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant

    # @review.save

    if @review.save
      redirect_to @restaurant, notice: 'The review was included.'
    else
      render :new
    end

    # redirect_to restaurant_path(@restaurant)
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
