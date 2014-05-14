# == Route Map (Updated 2014-05-13 11:34)
#
#          Prefix Verb   URI Pattern                 Controller#Action
#            root GET    /                           welcome#index
#         walkers GET    /walkers(.:format)          walkers#index
#                 POST   /walkers(.:format)          walkers#create
#      new_walker GET    /walkers/new(.:format)      walkers#new
#     edit_walker GET    /walkers/:id/edit(.:format) walkers#edit
#          walker GET    /walkers/:id(.:format)      walkers#show
#                 PATCH  /walkers/:id(.:format)      walkers#update
#                 PUT    /walkers/:id(.:format)      walkers#update
#                 DELETE /walkers/:id(.:format)      walkers#destroy
#          owners GET    /owners(.:format)           owners#index
#                 POST   /owners(.:format)           owners#create
#       new_owner GET    /owners/new(.:format)       owners#new
#      edit_owner GET    /owners/:id/edit(.:format)  owners#edit
#           owner GET    /owners/:id(.:format)       owners#show
#                 PATCH  /owners/:id(.:format)       owners#update
#                 PUT    /owners/:id(.:format)       owners#update
#                 DELETE /owners/:id(.:format)       owners#destroy
#            dogs GET    /dogs(.:format)             dogs#index
#                 POST   /dogs(.:format)             dogs#create
#         new_dog GET    /dogs/new(.:format)         dogs#new
#        edit_dog GET    /dogs/:id/edit(.:format)    dogs#edit
#             dog GET    /dogs/:id(.:format)         dogs#show
#                 PATCH  /dogs/:id(.:format)         dogs#update
#                 PUT    /dogs/:id(.:format)         dogs#update
#                 DELETE /dogs/:id(.:format)         dogs#destroy
#  owners_profile GET    /owners/profile(.:format)   owners#show
#                 POST   /owners/profile(.:format)   owners#edit
# walkers_profile GET    /walkers/profile(.:format)  walkers#show
#                 POST   /walkers/profile(.:format)  walkers#edit
#     session_new GET    /session/new(.:format)      session#new
#         session POST   /session(.:format)          session#create
#          logout GET    /logout(.:format)           session#destroy
#

Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  resources :walkers
  resources :owners
  resources :dogs

  get "/search" => "search#index"
  get "/search/results" => "search#results"

  get "/owners/profile" => "owners#show"
  post "/owners/profile" => "owners#edit"


  get "/walkers/profile" => "walkers#show"
  post "/walkers/profile" => "walkers#edit"

  # these routes are specific to managing the sessions
  get "/session/new" => "session#new"
  post "/session" => "session#create"
  get "/logout" => "session#destroy"

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
