Rails.application.routes.draw do
  get 'top/do'
  get 'list/do'
  get 'job/do'
  get 'area/do'
  get 'top/do/:id', to: 'job#do'
  # match 'job/do/:id' => 'job#do'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  get 'top' => 'top#do'
  get 'list' => 'list#do'
  get 'entry' => 'entry#do'
  get 'entry_complete' => 'entry_complete#do'
  get 'job' => 'job#do'
  get 'mypage' => 'mypage#do'
  get 'entry_manage' => 'entry_manage#do'

  get 'admin_top' => 'admin_top#do'
  get 'admin_list' => 'admin_list#index'
  get 'detail' => 'detail#show'
  get 'edit' => 'edit#do'
  get 'new_edit' => 'new_edit#do'

  get 'area' => 'area#do'
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
