Skillist::Application.routes.draw do
  #Clearance::Routes.draw(map)
  resources :users
  resources :skills
  resources :profiles
  resources :activity_log #, :only => [:create] 

  match 'craftsman/:username' => 'skills#index', :as => :craftsman

  match '/' => '/skills#index'

  match '/:controller(/:action(/:id))'
end

