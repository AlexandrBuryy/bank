Rails.application.routes.draw do


# # # # CREDIT DEPARTMENT # # # #
  root to: 'credit_department#index'

  get '/credit_department/add', to: 'credit_department#add_credit', as: 'new_credit_type'

  get '/credit_department/:id', to: 'credit_department#details', as: "details_credit_type"

  get '/credit_department/:id/edit', to: 'credit_department#edit_credit', as: "edit_credit_type"

  post '/credit_department', to: 'credit_department#create_credit', as: "create_credit_type"

  patch '/credit_department/:id', to: 'credit_department#update_credit', as: "update_credit_type"

  delete '/credit_department/:id', to: 'credit_department#delete_credit', as: "delete_credit_type"

# # # # # # # # # # # # # # # #


# # # # DEPOSIT DEPARTMENT # # # #
  get '/deposit_department/index', to: 'deposit_department#index', as: 'index'

  get '/deposit_department/add', to: 'deposit_department#add_deposit', as: 'new_deposit_type'

  get '/deposit_department/:id', to: 'deposit_department#details', as: "details_deposit_type"

  get '/deposit_department/:id/edit', to: 'deposit_department#edit_deposit', as: "edit_deposit_type"

  post '/deposit_department', to: 'deposit_department#create_deposit', as: "create_deposit_type"

  patch '/deposit_department/:id', to: 'deposit_department#update_deposit', as: "update_deposit_type"

  delete '/deposit_department/:id', to: 'deposit_department#delete_deposit', as: "delete_deposit_type"

# # # # # # # # # # # # # # # #





end
