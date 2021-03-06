Readable::Application.routes.draw do
  resources :reviews

  resources :children

  resources :lists

  devise_for :users
  resources :questions

  resources :book_versions

  resources :books

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root :to => redirect('/index.html')

  match "/users/dashboard" => "users#dashboard", via: [:get]
  match "/users/search_results" => "users#search_results", via: [:post,:get]
  match "/user/add_to_list" => "users#add_to_list", via: [:get]
  match "/books/:id/child_view/:child_id" => "books#child_view", via: [:get]
  match "/books/:id/book_questions/:child_id" => "books#book_questions", via: [:get]

  match "/books/:id/fetch_other_book_version" => "books#fetch_other_book_version", via: [:get]


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
