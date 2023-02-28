Rails.application.routes.draw do
  root "pages#home"
  get "about", to: "pages#about"
  resources :articles
  #[:show, :index, :new, :create, :edit, :update, :destroy]
end
