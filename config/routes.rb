Rgv::Application.routes.draw do

  resources :carts

  get "main/home"

#  devise_for :admins
  devise_for :admins, :controllers => { :registrations => "registrations" }
  namespace :admin do
    #note- after authentication, flow is directed to restaurants#show
    #      this could change to restaurant#index if admin is allowed to have more than one restaurant
    root :to => "restaurants#show"
  end

  devise_for :users, :controllers => { :registrations => "registerusers" }
  namespace :user do
    root :to => "restaurants#index"
  end


  resources :order_items

  resources :categories

  resources :reviews

  resources :orders

# resources :restaurants
  resources :restaurants do
    get :edit_name, :on => :member
    get :edit_hours, :on => :member
    get :edit_logo, :on => :member
    get :edit_misc, :on => :member
    resources :menus do
          get :index_public, :on => :collection
    end
  end

  resources :menus


  resources :customers

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
  # match ':controller(/:action(/:id(.:format)))'

  root :to => "main#home"

end
