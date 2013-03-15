Spree::Core::Engine.routes.append do

  namespace :admin do

    resources :relation_types
    namespace :products do
      get '/products/related', :to => "products#related"
      resources :relations
    end

  end

end
