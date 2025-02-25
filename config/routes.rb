Rails.application.routes.draw do
  get "tasks", to: "tasks#index"

  # Create a new task (2 routes)
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"

  # Show a specific task
  get "tasks/:id", to: "tasks#show", as: :task

  # Edit a task (2 routes)
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"

  # Delete a task
  delete "tasks/:id", to: "tasks#destroy"
end
