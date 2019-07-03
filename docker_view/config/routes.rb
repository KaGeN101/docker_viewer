Rails.application.routes.draw do
  get '/history', to: 'history#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
