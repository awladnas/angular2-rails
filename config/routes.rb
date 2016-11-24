Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/api' => 'application#index', defaults: { format: :json }
  get '/api/about' => 'application#about', defaults: { format: :json }
end
