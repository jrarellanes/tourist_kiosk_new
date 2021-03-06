Bootstrap::Application.routes.draw do
  resources :images

  resources :users

  resources :clasifications

  resources :emergency_corporations

  resources :emergencyrequests

  resources :user_visits

  resources :preferences

  resources :places_interests
  root :to => 'places_interests#index'
  get 'dinamic' => 'places_interests#dinamicIndex'
  
  resources :users, :user_sessions
  match 'login' => 'user_sessions#new', :as => :login
  match 'logout' => 'user_sessions#destroy', :as => :logout
  
  match 'places_interests/register/:id' => 'places_interests#register', :as => :register
  
  get 'recommended' => 'places_interests#recommended_places'
  get 'confirm_place/:id' => 'places_interests#confirm_place'
  get  'index_unconfirm' => 'places_interests#index_unconfirm'
  get 'services/:id' => 'places_interests#places_rh'
  get 'user_visits/create/:id' => 'user_visits#create'
  get 'history' => 'places_interests#history'
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
