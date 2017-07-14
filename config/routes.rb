Rails.application.routes.draw do
root "artists#index"

  resources :artists do
  resources :songs, shallow:true
  end

end
