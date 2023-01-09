Rails.application.routes.draw do
  get "/users", only: [:new, :create]
end
