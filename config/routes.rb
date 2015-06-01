Rails.application.routes.draw do

  resources :artists do
    resource :artist_genres
    resources :albums do
      resources :songs
    end
  end

  resources :record_labels, path: 'record_labels'

  resources :genres

  root to: 'welcome#index'
  get 'search/search'


  get '/about', :to => 'welcome#about'

end
