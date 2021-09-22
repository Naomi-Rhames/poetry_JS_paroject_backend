Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do

    namespace :v1 do
      resources :poems, only: [:index, :create, :update, :destroy]
     
      # get '/search/:name', to: 'categories#search'

      resources :categories, only: [:index]


    end
  end

  #  get '/search/:name', to: 'categories#search'

end
