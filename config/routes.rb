ActionController::Routing::Routes.draw do |map|
  
  map.resources :apostles
  map.resources :prayers
  map.resources :statics
  


  map.root :controller => "main", :action => "index"
  map.calendar "calendar/:date", :controller => "main",
                                 :action => "index",
                                 :date => nil

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'

  #activating english routes
  ActionController::Routing::Translator.i18n('en', 'fr')
  


end
