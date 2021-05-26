Rails.application.routes.draw do

  # get 'restaurants', to: 'restaurants#index', as: "restaurants"
  #collection and member
  resources :restaurants do
  #top restaurants - 5 stars
    collection do
      get :top
    end

    # chef
    member do
      get :chef
    end

    resources :reviews, only: [:new, :create]
  end

  resources :reviews, only: [:destroy]

end


# Routes -> Controller -> View


# restaraurant = id 16

# review id 1 -> very good
# review id 2 -> not very good
# review id 3 -> very spicy


# to add new review, I need to specify the restaurant


# @restaurant = Restaurant.find(16)
# @restaurant.destroy

# @review = Review.find(2)
# @review.destroy

