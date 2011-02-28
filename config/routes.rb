Cland::Application.routes.draw do
    get "histoires_de_sphere/index"

    get 'admin' => 'admin#index'

    controller :sessions do
      get 'login' => :new
      post 'login' => :create
      delete 'logout' => :destroy
    end

    get "admin/index"

    resources :users

    resources :histoires
    resources :personnages
    resources :spheres
    resources :descriptions

    get "blog/index"

    resources :news

    root :to => "accueil#index"

    namespace :boite_a_news do
      resources :billets
      match 'boite_a_news' => 'blog#index', :as => "blog"
    end
    match 'accueil' => 'accueil#index', :as => "accueil"
    match 'boite_a_sphere' => 'boite_a_spheres#spheres', :as => "boite_a_spheres"
    match 'boite_a_spheres/:sphere_id' => 'histoires_de_sphere#index', :as => 'sphere'
  
end
