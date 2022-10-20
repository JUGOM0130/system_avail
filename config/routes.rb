Rails.application.routes.draw do
  get "account/reg" => "account_kanri#registration"
  get "/" => "account_kanri#show"
  get "account/show" => "account_kanri#show"
  post "account/shori" => "account_kanri#shori"
end
