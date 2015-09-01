Rails.application.routes.draw do
  devise_for :users
  root "site#details"
  get "/rsvp" => "site#rsvp"
  get "/accommodation" => "site#accommodation"
  get "/directions" => "site#directions"
  get "/transport" => "site#transport"
  get "/gifts" => "site#gifts"

  resources "rsvps", only: [:create]
  resources "locations"
  resources "accommodations"
end