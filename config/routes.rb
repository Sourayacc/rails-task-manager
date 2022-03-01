Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Voir tout les tasks
  get '/tasks', to: 'tasks#index'
  # Créer un task
  get '/tasks/new', to: 'tasks#new'
  post '/tasks', to: 'tasks#create'
  # Voir le détail d'un task
  get '/tasks/:id', to: 'tasks#show', as: :task
  # Modifier un task
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'
  # Supprimer un task
  delete '/task/:id', to: 'tasks#destroy', as: :task_delete
  # resources :tasks
end
