Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create]
  end

  # reviews
  #add a review
  # get "restaurants/:id/reviews/new"
  # post "restaurants/:id/reviews"
end
