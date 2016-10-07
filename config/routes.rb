Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'key_pairs#index'

  get  'key_pairs' => 'key_pairs#index'
  post 'key_pairs' => 'key_pairs#create'
  get  'key_pairs/inactivate_all' => 'key_pairs#inactivate_all'

  get 'ping' => 'application#ping'
end
