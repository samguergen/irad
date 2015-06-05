Rails.application.routes.draw do

  resources :users do
    collection do
      get 'login'
      post 'new_login'
      get 'logout'
    end
  end

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
