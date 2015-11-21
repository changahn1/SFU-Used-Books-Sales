Rails.application.routes.draw do
  root to: 'books#index'
  
<<<<<<< HEAD
  resources :books do
    resources :reviews
  end
=======
  resources :books
>>>>>>> 9154163c9b2d4d3cf0133f712980f740a3d38c25

  get    'about'   => 'static_pages#about'
  get    'contact' => 'static_pages#contact'
  get    'profile' => 'static_pages#profile'
  get    'login'   => 'sessions#new'
  
  

  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"},
                     controllers: {omniauth_callbacks: "omniauth_callbacks", registrations: 'registrations'}

end
