Evedb::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users

  resources :token_authentications, :only => [:create, :destroy]
  resources :rest_clients
  namespace :api do
    namespace :v1 do
      namespace :map do
        resources :denormalize, :only => [:index,:show]
      end
      namespace :inventory do
        resources :type, :only => [:index,:show]
      end
    end
  end
end