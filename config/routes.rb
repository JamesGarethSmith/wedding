Rails.application.routes.draw do
  devise_for :users
  root "site#details"
  get "/accommodation" => "site#accommodation"
  get "/directions" => "site#directions"
  get "/transport" => "site#transport"
  get "/gifts" => "site#gifts"

  resources "rsvps"
  resources "locations"
  resources "accommodations"
end