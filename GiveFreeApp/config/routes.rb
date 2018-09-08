Rails.application.routes.draw do
root to: "home#index"
  devise_for :users
  resources :search
  resources :charities    
  resources :users do 
    resources :incomes
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
