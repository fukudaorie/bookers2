Rails.application.routes.draw do
  
  devise_for :views
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  
  root to: 'homes#top'
  get 'homes/about' => 'homes#about',as:'about'
  resources 'users', only: [:index, :show, :edit, :update]
  resources 'books', only: [:index, :show, :edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
