Rails.application.routes.draw do
  resources :students, only: :index
  get '/students/new', to: 'students#new', as: 'new_student'
  create '/students', to: 'students#show'
  get '/students/:id', to: 'students#show', as: 'student'
end
