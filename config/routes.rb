PWCWeb::Application.routes.draw do

  constraints subdomain: "" do
    match "(*any)" => redirect { |params, request| URI.parse(request.url).tap { |uri| uri.host = uri.host.prepend("www.") }.to_s }, via: :all
  end

  resources :employees, only: [:index, :show], path: 'staff'
  resources :services, only: [:index, :show]
  resources :albums, only: [:index, :show]
  resources :events, only: [:show]

  root :to => 'pages#home'
  get 'about' => 'pages#about'
  get 'coronavirus' => 'pages#coronavirus'
  get 'error' => 'pages#error'
  get 'news' => 'pages#news'
  get 'community' => 'pages#community'
  get 'contact' => 'pages#contact'
  get 'careers' => 'pages#careers'
  get 'portal' => 'pages#portal'
  get 'header' => 'pages#header'
  get 'sig' => 'pages#email_signature'
  get 'signature' => 'pages#download_email_signature'
  get 'pay' => 'pages#pay'

  match '*path', :to => 'pages#not_found', via: :all

end