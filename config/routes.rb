Rails.application.routes.draw do
  root to: 'restaurants#index'
  get "/restaurants", to: "restaurants#index"
  get "/restaurants/new", to: "restaurants#new", as: "new_restaurant"
  get "/restaurants/:id", to: "restaurants#show", as: "restaurant"
  post "/restaurants", to: "restaurants#create"
  get "/restaurants/:restaurant_id/reviews/new", to: "reviews#new", as: 'new_restaurant_review'
  post "/restaurants/:restaurant_id/reviews", to: "reviews#create", as: 'restaurant_reviews'
end
