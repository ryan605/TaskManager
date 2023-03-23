Rails.application.routes.draw do

  #user
  post '/users', to: 'users#register'
  post '/users/login', to: 'users#login'
  delete '/users/logout', to: 'users#logout'
  get '/user/login/check', to: 'users#check_login_status'

  #Todos
  post '/todos', to: 'todos#create'

end
