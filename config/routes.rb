PWCWeb::Application.routes.draw do

  resources :employees, path: 'staff'
  resources :services
  resources :albums, only: [:index, :show]
  resources :events, only: [:show]

  root :to => 'pages#home'
  get 'about' => 'pages#about'
  get 'error' => 'pages#error'
  get 'news' => 'pages#news'
  get 'community' => 'pages#community'
  get 'contact' => 'pages#contact'
  get 'careers' => 'pages#careers'
  get 'portal' => 'pages#portal'
  get 'header' => 'pages#header'
  get 'sig' => 'pages#email_signature'
  get 'signature' => 'pages#download_email_signature'

  mount_sextant if Rails.env.development?

  match '*path', :to => 'pages#not_found'

end
