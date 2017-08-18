Rails.application.routes.draw do
  resources :menus
  root 'home#main'
  devise_for :users, controllers: { registrations: 'users/registrations' }

  get 'home/main'
  
  # 퀘스트 수행 완료 클릭 시 POST
  post 'main/custom' => 'home#complete_custom_quest'
  post 'main/daily' => 'home#complete_daily_quest'
  post 'main/party' => 'home#complete_party_quest'
  
  
  # 새로운 커스텀 퀘스트
  post 'main/new_quest' => 'home#new_quest'
  
  # 섬이동
  post 'map/move_island'=> 'home#move_island'
  
  # 아이템 착용
  post 'bag_item/wearing' => 'home#wearing_item'
  
  #펫 선택
  post 'pet/seleting' => 'home#selecting_pet'
  
  #칭호 선택
  post 'main/change_title' => 'home#change_title'
  
  #랭킹
  get 'etc/rank'
  
  #친구
  get 'etc/friend'
  post 'etc/friend/request' => 'etc#friend_request' # 새로운 친구 요청
  post 'etc/friend/accept' => 'etc#friend_accept' # 새로운 친구 요청
  
  
  get 'etc/main' => 'home#main'
  get 'etc/bag_item' => 'home#bag_item'
  get 'etc/map' => 'home#map'
  get 'etc/pet' => 'home#pet'
  get 'etc/shop' => 'home#shop'
  get 'etc/setting' => 'home#setting'
  
  get 'main' => 'home#main'
  get 'bag_item' => 'home#bag_item'
  get 'map' => 'home#map'
  get 'pet' => 'home#pet'
  get 'shop' => 'home#shop'
  get 'setting' => 'home#setting'
  
  
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
