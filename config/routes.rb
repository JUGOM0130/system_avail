Rails.application.routes.draw do
  root "menus#index"

  #アカウント管理機能
  get "account/create" => "account_kanri#create"
  post "account/create" => "account_kanri#create"
  get "account/update" => "account_kanri#update"
  get "account/show" => "account_kanri#show"
  get "account/delete" => "account_kanri#delete"
  #API
  post "account/shori" => "account_kanri#get_username"

  #社員マスタ
  get "usermasta/create" => "masta_users#create"
  post "usermasta/create" => "masta_users#create"
  get "usermasta/update/:incd" => "masta_users#update"
  get "usermasta/show" => "masta_users#show"
  get "usermasta/delete" => "masta_users#delete"

  #採番管理
  get "saiban/show" => "numbering_managements#show"
  get "saiban/index" => "numbering_managements#index"
  get "saiban/edit/:id" => "numbering_managements#edit"
  get "saiban/destroy/:id" => "numbering_managements#destroy"
  post "saiban/update" => "numbering_managements#update"
  get "saiban/regist" => "numbering_managements#regist"
  post "saiban/create" => "numbering_managements#create"

  #権限管理
  get "kengen/index" => "kengens#index"
  get "kengen/show/:user_cd" => "kengens#show"
  get "kengen/new" => "kengens#new"
  patch "kengen/update" => "kengens#update"

  #取引マスタ　これがrailsの書き方らしい
  '''
  get "/masta_toris"=>"masta_toris#index"
  post "/masta_toris"=>"masta_toris#create"
  get "/masta_toris/new"=>"masta_toris#new"
  get "/masta_toris/:id/edit"=>"masta_toris#edit"
  get "/masta_toris/:id"=>"masta_toris#show"
  patch "/masta_toris/:id"=>"masta_toris#update"
  delete "masta_toris/:id"=>"masta_toris#destroy"
  '''


  resources :masta_toris
end
