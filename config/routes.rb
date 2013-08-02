RailsProject::Application.routes.draw do
  root :to => 'static_pages#index'

  get '/get_new_question' => 'static_pages#new_question', as: :new_game


end
