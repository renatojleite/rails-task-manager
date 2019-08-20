Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # HOME
  root to: 'tasks#index'
  # CREATE
  get '/tasks/new', to: 'tasks#new'
  post '/tasks', to: 'tasks#create'
  # LIST ALL
  get '/tasks', to: 'tasks#index'
  # READ DETAILS
  get '/tasks/:id', to: 'tasks#show', as: 'task'
  # EDIT
  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  # UPDATE
  patch '/tasks/:id', to: 'tasks#update'
  # DELETE
  delete 'tasks/:id', to: 'tasks#destroy'
end
