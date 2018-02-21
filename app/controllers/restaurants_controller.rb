class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = Review.where(restaurant: @restaurant)
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    if @restaurant.save
      redirect_to restaurants_path
    else
      render new_restaurant_path
    end
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
