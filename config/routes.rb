Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

   # VERB PATH, to: 'CONTROLLER#ACTION'
   get "tasks", to: "tasks#index"

   post "tasks", to: "tasks#create"
   get "task/new", to: "tasks#new", as: "new_task"
   get "tasks/:id", to: "tasks#show", as: "task"

   get "task/:id/edit", to: "tasks#edit", as: "edit_task"
   patch "tasks/:id", to: "tasks#update"

   delete "tasks/:id", to: "tasks#destroy"


end
