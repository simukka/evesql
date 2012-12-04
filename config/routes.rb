Evedb::Application.routes.draw do
  devise_scope :user do
    get "/login" => "devise/sessions#new"
    delete "/logout" => "devise/sessions#destroy"
    get "/register" => "registrations#new"
    get "/account/edit" => "registrations#edit"
  end

  devise_for :users, :controllers => {:registrations => "registrations"}

  resources :users

  namespace :api do
    namespace :v1 do
      namespace :map do
        resources :denormalize, :only => [:index,:show]
      end
      namespace :inventory do
        resources :type, :only => [:index,:show]
      end
      namespace :certificate do
        resources :categories, :certificates, :classes, :recommendations, :relationships, :only => [:index,:show]
      end
    end
  end

  root :to => "home#index"
end