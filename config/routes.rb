Rails.application.routes.draw do
  #devise_for :users
  devise_for :users, controllers: { registrations: 'users/registrations' }
  devise_for :installs
  get 'welcome/index'
  root:to => "welcome#index"

  namespace 'api' do
    namespace 'v1' do
      post 'auth_user' => 'authentication#authenticate_user'
    end
  end

  resources :products
  resources :categories
  resources :images
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
