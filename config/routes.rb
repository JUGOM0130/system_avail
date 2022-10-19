Rails.application.routes.draw do
  get "account/reg" => "account_kanri#registration"
  get "account/show" => "account_kanri#show"
end
