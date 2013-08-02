RailsProject::Application.routes.draw do
  root :to => 'static_pages#index'

  get '/get_new_question' => 'static_pages#new_question', as: :new_question
  get '/get_new_game' => 'static_pages#new_game', as: :new_game


end
