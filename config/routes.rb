TwitterHashSearch::Application.routes.draw do
  root to: 'searches#new'
  resources :searches, only: [:new]
end
