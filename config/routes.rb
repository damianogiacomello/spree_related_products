Spree::Core::Engine.routes.draw do

  namespace :admin do

    resources :relation_types
    resources :products do
      get :search, :on => :collection
      get :related, :on => :member
      resources :relations
    end

  end

end
