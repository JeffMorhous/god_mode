GodMode::Engine.routes.draw do
  root to: 'dashboard#index'
  get 'models/:model_name', to: 'dashboard#show', as: :model
end
