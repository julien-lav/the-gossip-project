Rails.application.routes.draw do
  resources :gossips
  resources :anonymous_author

  root 'gossips#index' 


  get 'gossips/new', to: 'gossips#new'

  get 'gossips/edit', to: 'gossips#edit'

  get 'gossips/update', to: 'gossips#update'

  get 'gossips/show', to: 'gossips#show'

  get 'gossips/delete', to: 'gossips#delete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
