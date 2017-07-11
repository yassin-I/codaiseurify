Rails.application.routes.draw do
  resources :artists do
  resources :songs, only: [:create, :destroy]
  end

  root "artists#index"
  resources :artists
  resources :songs, except: [:create]

  root  "songs#index"
  end

    # get "songs" => "songs#index"
    # get 'songs/new' => "songs#new", as: :new_song
    # get "songs/:id" => "songs#show", as: :song
    #
    # post "songs" => "songs#create"
    # get 'songs/:id/edit' => 'songs#edit', as: :edit_song
    #
    # patch "songs/:id" => "songs#update"
    # delete "songs/:id" => "songs#destroy"
