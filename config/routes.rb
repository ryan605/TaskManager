Rails.application.routes.draw do

  #user
  post '/users', to: 'users#register'

end
