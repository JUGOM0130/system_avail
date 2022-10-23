Rails.application.routes.draw do
  root "menus#top"

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

end
