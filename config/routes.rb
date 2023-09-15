PWCWeb::Application.routes.draw do

  constraints subdomain: "" do
    match "(*any)" => redirect { |params, request| URI.parse(request.url).tap { |uri| uri.host = uri.host.prepend("www.") }.to_s }, via: :all
  end

  resources :employees, only: [:index, :show], path: 'staff'
  resources :services, only: [:index, :show]
  resources :albums, only: [:show]
  resources :events, only: [:show]

  root :to => 'pages#home'
  get 'about' => 'pages#about'
  get 'coronavirus' => 'pages#coronavirus'
  get 'error' => 'pages#error'
  get 'albums' => redirect('/media')
  get 'news' => redirect('/media')
  get 'community' => redirect('/media')
  get 'media' => 'pages#media'
  get 'contact' => 'pages#contact'
  get 'careers' => 'pages#careers'
  get 'portal' => 'pages#portal'
  get 'header' => 'pages#header'
  get 'sig' => 'pages#email_signature'
  get 'signature' => 'pages#download_email_signature'
  get 'pay' => 'pages#pay'

  match '*path', :to => 'pages#not_found', via: :all

end
