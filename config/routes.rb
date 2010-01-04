ActionController::Routing::Routes.draw do |map|
  map.resources :gospel_apostles

  
  map.resources :apostles
  map.resources :prayers
  map.resources :statics
  map.resources :gospels

  map.slovo_otciv "slovo-otciv", :controller => "main", :action => "fathers_words"
  map.pro_calendar "pro-calendar", :controller => "main", :action => "about"
  map.contact "contact", :controller => "main", :action => "contact"
  


  map.root :controller => "main", :action => "index"
  map.calendar ":date", :controller => "main",
                                 :action => "index",
                                 :date => nil

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'

  #activating english and franch routes
  ActionController::Routing::Translator.i18n('en', 'fr')
  


end
