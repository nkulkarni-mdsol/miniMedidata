Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #resources :Studies
   post 'create_study/:study_group_id', to: 'studies#create'
   #post 'create_study', to: 'studies#create'
   get  'studies/:study_group_id', to: 'studies#index' 
   patch 'update_study/:id', to: 'studies#update'
   delete 'delete/:id', to: 'studies#delete'

end
