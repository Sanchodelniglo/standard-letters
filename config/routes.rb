Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :purposes, only: [:index, :show], path: "lettre-type" do
    get "/*categories/entreprise/:company_id", to: "letters#show", as: :letter
    get "/*categories", to: "categories#index", as: :categories
  end
end
