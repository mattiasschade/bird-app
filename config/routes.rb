Rails.application.routes.draw do
  get "/birds" => "birds#index"
  get "/birds/:id" => "birds#show"
  post "/birds" => "birds#create"
  patch "/birds/:id" => "birds#update"
  delete "/birds/:id" => "birds#destroy"
end
