Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => redirect('/all')
  get "all" => "all#index", as: "todos"
  post "all" => "all#create"
  get "all/new" => "all#new", as: "new_task"

end
