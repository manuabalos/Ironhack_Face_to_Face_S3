Rails.application.routes.draw do
  get '/' => "games#index", as: "root"
  post '/' => "games#search"
  get '/games/search' => 'games#search', as: 'games_search'

  resources :games
end
