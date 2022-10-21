Rails.application.routes.draw do
  get "account/reg" => "account_kanri#registration"
  get "/" => "account_kanri#show"
  get "account/show" => "account_kanri#show"
  post "account/reg" => "account_kanri#reg"
  get "test" => "account_kanri#test"

  #　以下API
  post "account/shori" => "account_kanri#shori"
end
