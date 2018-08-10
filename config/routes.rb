Rails.application.routes.draw do
  get 'braintree/new'
  #get 'sessions/new'
  resources :sessions
  resources :users
  post 'braintree/checkout' => "braintree#checkout", as: "braintree_checkout"
  post 'braintree/new'
  get 'welcome/index'

    resources :articles do
      resources :comments
      collection do
      get :search #creates new path for search
    end
  end

  resources :subscribers
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
