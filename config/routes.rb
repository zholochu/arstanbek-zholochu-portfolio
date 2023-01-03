Rails.application.routes.draw do
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  match "(*any)",
    to: redirect(subdomain: ""),
    via: :all,
    constraints: { subdomain: "www" }
end
