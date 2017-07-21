Rails.application.routes.draw do
  root to: 'cities#index'

  get 'cities/show', as: :city

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
