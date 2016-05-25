Rails.application.routes.draw do

  get 'top/do'
  get 'list/do'
  get 'area/do'
  #get 'top/do/:id', to: 'job#do'
  get 'job/:id' => 'job#do'
#  match 'job/do/:id' => 'job#do'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  get 'top' => 'top#do'
  get 'list' => 'list#do'
  get 'entry/:id' => 'entry#do'
  get 'entry_complete' => 'entry_complete#do'
  get 'job/:id' => 'job#do'

  get 'mypage/:id' => 'mypage#do'
  get 'mypage/thanks' => 'mypage#thanks'
  get 'login/mypage' => 'mypage#new'
  get 'login/login' => 'mypage#create'
  delete 'logout'  => 'mypage#destroy'

  get 'entry_manage/:id' => 'entry_manage#do'
  get 'admin_top' => 'admin_top#do'
  get 'admin_top' => 'admin_top#new'
  get 'edit/:id' => 'edit#index'
  # delete 'edit/:id' => 'edit#destroy'
  # patch 'edit/confirm' => 'edit#confirm'
  post 'edit/edit/:id/thanks' => 'edit#thanks'
  get 'new_edit' => 'new_edit#index'            # 入力画面
 # post 'new_edit/confirm' => 'new_edit#confirm'   # 確認画面
  post 'new_edit/thanks' => 'new_edit#thanks'     # 送信完了画面
  get 'delete/:id' => 'edit#delete'
  get 'area' => 'area#do'
  # get    'login'   => 'sessions#new'
  # post   'login'   => 'sessions#create'
  # delete 'logout'  => 'sessions#destroy'
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
