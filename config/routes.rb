Patienthub::Application.routes.draw do

# root URL

  get '/', controller: 'conditions', action: 'index'
  get '/login', controller: 'sessions', action: 'new'
  post '/sessions', controller: 'sessions', action: 'create'
  get "/logout", controller: 'sessions', action: 'destroy'






# Routes for the HomePage resource:

  get '/home', controller: 'home_page', action: 'show', as: "home_page"

  # Routes for the Condition resource:

  get '/conditions/new', controller: 'conditions', action: 'new', as: "new_condition"
  post "/conditions", controller: 'conditions', action: 'create'
  get '/conditions', controller: 'conditions', action: 'index', as: "conditions"
  get '/conditions/:condition_id', controller: 'conditions', action: 'show', as: "condition"
  get '/conditions/:condition_id/edit', controller: 'conditions', action: 'edit', as: "edit_condition"
  put '/conditions/:condition_id', controller: 'conditions', action: 'update'
  delete '/conditions/:condition_id', controller: 'conditions', action: 'destroy'
  post "/conditions/search", controller: 'conditions', action: 'filter'
  #------------------------------

# Routes for the User resource:

 get '/users/new', controller: 'users', action: 'new', as: "new_user"
 post "/users", controller: 'users', action: 'create'
 get "/users", controller: 'users', action: 'index', as: "users"
 get '/users/:user_id', controller: 'users', action: 'show', as: "user"
 get "/users/:user_id/edit", controller: 'users', action: 'edit', as: "edit_user"
 put '/users/:user_id', controller: 'users', action: 'update'
 delete '/users/:user_id', controller: 'users', action: 'destroy'
 post "/users/search", controller: 'users', action: 'filter'

 # Routes for the Treatment resource:

 get '/treatments/new', controller: 'treatments', action: 'new', as: "new_treatment"
 post "/treatments", controller: 'treatments', action: 'create'
 get "/treatments", controller: 'treatments', action: 'index', as: "treatments"
 get '/treatments/:treatment_id', controller: 'treatments', action: 'show', as: "treatment"
 get "/treatments/:treatment_id/edit", controller: 'treatments', action: 'edit', as: "edit_treatment"
 put '/treatments/:treatment_id', controller: 'treatments', action: 'update'
 delete '/treatments/:treatment_id', controller: 'treatments', action: 'destroy'
 post "/treatments/search", controller: 'treatments', action: 'filter'

end

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
