SmalltownHero::Application.routes.draw do
  resources :campaigns do
    resources :pictures
    resources :heroes do
      resources :stories
      resources :pictures
    end
  end

  root to: "home#index"
end
