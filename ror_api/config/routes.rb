Rails.application.routes.draw do

	 post 'auth_user' => 'authentication#authenticate_user'
  resources :users
  resources :bicycles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
