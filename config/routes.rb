Rails.application.routes.draw do
  get "/", to: "blogs#index"
  get 'blogs/confirm', to: "blogs#confirm"
  resources :blogs
end
