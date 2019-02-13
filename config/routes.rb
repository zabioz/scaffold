Rails.application.routes.draw do
  get 'home/index'

  get 'home/add'

  get 'home/show'

  post 'home/new'

  get 'home/show/:id' => 'home#show'

  resources :samples
  #resources :test1s
  get 'test1s/index', to: 'test1s#index'
  get 'test1s/add'
  get 'test1s/show'
  post 'test1s/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
