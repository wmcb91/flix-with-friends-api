Rails.application.routes.draw do
  # resources :queued_films, except: [:new, :edit]
  resources :screenings, except: [:new, :edit]
  resources :movies, only: [:index, :show]
  resources :profiles, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
