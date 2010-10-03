ActionController::Routing::Routes.draw do |map|
  Clearance::Routes.draw(map)
  map.resources :users
  map.resources :skills
  map.resources :profiles
  map.resources :activity_log, :only => [:create] 

  map.craftsman 'craftsman/:username', :controller => :skills, :action => :index
  
  map.root :controller => "skills"

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
