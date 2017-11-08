class ReviewsController < ApplicationController
  before_action :set_restaurant

  def new
    # GET /restaurants/:restaurant_id/reviews/new
    @review = Review.new
    @restaurant = set_restaurant
  end

  def create
    @restaurant = set_restaurant
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    @review.save
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
