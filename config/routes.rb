Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks"}
  get 'welcome/index'

  root "welcome#index"
    get "talents/search" => "talents#search"

  resources :talents
  resources :profiles do 
    member do
      get 'rate'
    end
  end

end
