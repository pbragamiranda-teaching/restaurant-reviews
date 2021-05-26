class ReviewsController < ApplicationController

  before_action :find_restaurant, except: :destroy

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def destroy
    # find review to be deleted
    @review = Review.find(params[:id])
    # delete review
    @review.destroy
    # redirect to show page of restaurant
    redirect_to restaurant_path(@review.restaurant_id)
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content)
  end

end
