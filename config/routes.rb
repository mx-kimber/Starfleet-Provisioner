Rails.application.routes.draw do

  get "/crew_members" => "crew_members#index"
  get "/crew_members/:id" => "crew_members#show"
  post "/crew_members" => "crew_members#create"
  patch "crew_members/:id" => "crew_members#update"
  delete "crew_members/:id" => "crew_members#destroy"

end
