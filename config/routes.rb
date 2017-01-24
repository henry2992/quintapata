Rails.application.routes.draw do
  
  # Pages Controller
  root 'pages#home'
  get '/unete', to: 'pages#vet_join'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
