Rails.application.routes.draw do
  root 'topics#index'
  resources :topics do
    member do
      post 'upvote'
      put 'downvote'
    end
    collection do
      get :about
    end
  end
end
