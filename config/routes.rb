Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #read all tasks
  get 'tasks', to: 'tasks#index'
  #read one task
  get 'tasks/new', to: 'tasks#new'
  get 'tasks/:id', to: 'tasks#show', as: 'task'
  #create a task
  post 'tasks', to: 'tasks#create'
  #edit a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit'
  patch 'tasks/:id', to: 'tasks#update'
  #destroy
  delete 'tasks/:id', to: 'tasks#destroy'
end
