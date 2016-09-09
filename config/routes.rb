Rails.application.routes.draw do
  resources :courses do
    resources :sections, :except => [:show, :index]
  end
end
