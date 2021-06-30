Rails.application.routes.draw do
  
  resources :orders do
    resources :drinks
  end
  
end
