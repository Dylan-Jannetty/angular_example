Rails.application.routes.draw do
  resources :events
  root 'dashboard#index'
  
  namespace :api do
    resources :events, only: [:index, :create, :update, :destroy] do
      collection do
        get :search
      end
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
