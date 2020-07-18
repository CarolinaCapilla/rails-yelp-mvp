Rails.application.routes.draw do
  resources :restaurants, only: %i[new create index show] do
    resources :reviews, only: %i[create]
  end
end
