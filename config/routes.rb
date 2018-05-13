Rails.application.routes.draw do
  post '/pages/set_stats', to: 'pages#set_stats', as: 'set_stats'
  get '/pages/leaderboard', to: 'pages#leaderboard', as: 'leaderboard'
  devise_for :users
	resources :pages
end
