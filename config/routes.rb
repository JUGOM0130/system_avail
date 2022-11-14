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

  get "torimasta/index" => "masta_toris#index"
  get "torimasta/show" => "masta_toris#show"
  get "torimasta/create" => "masta_toris#create"
  get "torimasta/add" => "masta_toris#add"
  get "torimasta/edit" => "masta_toris#edit"
  get "torimasta/update" => "masta_toris#update"
end
