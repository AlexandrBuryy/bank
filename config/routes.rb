Rails.application.routes.draw do
  root to: 'credit_department#index'

  get '/credit_department/add', to: 'credit_department#add_credit', as: 'new_credit_type'

  get '/credit_department/:id', to: 'credit_department#details', as: "details_credit_type"

  get '/credit_department/:id/edit', to: 'credit_department#edit_credit', as: "edit_credit_type"

  post '/credit_department', to: 'credit_department#create_credit', as: "create_credit_type"

  patch '/credit_department/:id', to: 'credit_department#update_credit', as: "update_credit_type"

  delete '/credit_department/:id', to: 'credit_department#delete_credit', as: "delete_credit_type"

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
