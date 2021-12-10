Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    resources :programs, only: [:create, :new, :edit, :update, :destroy]
end
