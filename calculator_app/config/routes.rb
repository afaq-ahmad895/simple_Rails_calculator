Rails.application.routes.draw do
 # get 'calculator/index'
  root 'calculator#index'
  post '/calculate', to: 'calculator#calculate'
 # post 'calculate', controller: 'calculator', action: 'calculate'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
