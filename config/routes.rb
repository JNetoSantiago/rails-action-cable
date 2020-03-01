Rails.application.routes.draw do
  devise_for :users

  root to: 'chat_rooms#index'

  resources :chat_rooms

  post '/messages/:id', to: 'messages#save_message', as: :messages
end
