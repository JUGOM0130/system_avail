Rails.application.routes.draw do
  get "acc_kanri/reg" => "account_kanri#registration"
  get "acc_kanri/show" => "account_kanri#show"
end
