Rails.application.routes.draw do
  # resources :topics
  # resources :posts
  resources :topics do
      resources :posts, except: [:index]
      resources :sponsored_posts, except: [:index]
  end

  get 'about' => 'welcome#about'
  root 'welcome#index' #same as root({to: 'welcome#index'})
 end
