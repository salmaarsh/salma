Rails.application.routes.draw do
 
  devise_for :users,:controllers => { :registrations =>'registrations',:sessions =>'sessions',:passwords =>'passwords' }
  
  
  root :to =>'home#index'
  
  post "home/index", :to => "home#display"
  get "home/display", :to => "home#data_input_of_rest_id", :as => :show_foodcategory
  post "home/data_input_of_rest_id", :to => "home#foodcategories"
  get "home/foodcategories", :to => "home#fooditems", :as => :show_fooditem
  
  
 
end
