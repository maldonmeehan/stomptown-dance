Rails.application.routes.draw do
  root :to => "courses#index"

  resources :courses do
    resources :sections, :except => [:show, :index]
  end

  resources :sections do
    resources :lessons
  end

  resources :dances do
    resources :instructions

    resources :dances do
      resources :figures
    end

  end
end
