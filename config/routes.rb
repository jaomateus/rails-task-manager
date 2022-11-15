Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # index
  get 'tasks', to: 'tasks#index'

  # CREATE
  # GET the task creation form = 1 request
  get 'tasks/new', 'tasks#new'
  # display one task
  get 'tasks/:id', to: 'tasks#show', as: :task
  # POST the parameters to create a new restaurant = 1 request
  post 'tasks', to: 'tasks#create'

  # UPDATE
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # DELETE
  delete 'tasks/:id', to: 'tasks#destroy'
end
