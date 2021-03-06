Rails.application.routes.draw do
  root to: 'pages#home'

  get "impressum", to: 'pages#impressum'

  get "recipes/:id", to: "recipes#show", as: :recipe

  resources :recipes do
    collection do
      get :top
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end