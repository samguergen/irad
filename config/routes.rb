Rails.application.routes.draw do

  resources :users, only: [:new, :create, :index, :show, :edit, :update]
  get 'signin', to: 'users#signin', as: :signin
  get 'signout', to: 'users#signout', as: :signout

  resources :artists do
    resource :artist_genres
    resources :albums do
      resources :songs
    end
  end

  resources :record_labels, path: 'recordlabels'
  resources :genres

  root to: 'welcome#index'
  get 'search/search'

  get 'welcome/about'

end
