Rails.application.routes.draw do

  root 'index#home'

  # devise_for :users, controllers: {
  #   sessions: 'users/sessions'
  # }

end
