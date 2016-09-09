Rails.application.routes.draw do
  resources :courses do
    resources :sections
  end
end
