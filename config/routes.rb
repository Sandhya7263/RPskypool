RpSkypool::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  resources :home

  root 'home#index'
  get '/contact' => 'home#contact_us'
  get '/about_us' => 'home#about_us'
  get '/gallery' => 'home#photo_gallery'
  get '/products' => 'home#products'
  get '/services' => 'home#services'


  resources :contacts


end
