Upwave::Application.routes.draw do
  
  resources :upload_files, only: [:index, :create, :show, :destroy]
  
  root :to => 'upload_files#index'

end
