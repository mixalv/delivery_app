Rails.application.routes.draw do
    root "couriers#index"
    resources :couriers do
        resources :packages
    end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
