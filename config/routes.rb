Rails.application.routes.draw do

 root 'home#index'

 devise_for :users, controllers: {
   sessions: 'users/sessions',
   registrations: 'users/registrations'
 }

  namespace :api do
    get 'logged_in_user', to: 'users#logged_in_user'
  end

  # REQUIRED FOR REACT ROUTER - NO ROUTES BELOW THIS
  get '*unmatched_route', to: 'home#index'

end
