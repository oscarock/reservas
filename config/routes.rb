Rails.application.routes.draw do
  #namespace :api, defaults: { format: "json" } do
    #namespace :v1 do
      resources :movies, :except => [:new, :edit, :update, :destroy]
      resources :stockpiles, :except => [:new, :edit, :update, :destroy, :show]
      get 'validate/:id', to: 'stockpiles#validate', as: 'validate'
    #end
  #end
end
