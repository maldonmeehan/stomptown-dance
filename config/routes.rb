Rails.application.routes.draw do
  devise_for :users
  root :to => "courses#index"

  get 'static_pages/contact'

  resources :courses do
    resources :sections, :except => [:show, :index]
  end

  resources :sections do
    resources :lessons
  end

  resources :dances do
    resources :figures
  end

  resources :figures do
    resources :instructions
  end

end
