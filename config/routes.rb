Rails.application.routes.draw do
  
  # root 'welcome#index'
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  resources :users

  get 'deleted-users' => 'users#deleted_users'
  get 'all-users' => 'users#all_users'
  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase
end
