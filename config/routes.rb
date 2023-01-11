Rails.application.routes.draw do
  get 'savedcompanies/index'
  get 'savedcompanies/show'
  get 'savedcompanies/create'
  get 'savedcompanies/update'
  get 'savedcompanies/destroy'
  resources :questions
  resources :quizzes
  resources :surveyanswers
  resources :surveyquestions
  resources :surveys
  resources :jobapplications
  resources :savedprofiles
  resources :savedcompanies
  resources :savedjobs
  resources :internships
  resources :jobs
  resources :experiences
  resources :educations
  resources :employers
  resources :seekers
  resources :accounts
  resources :categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'




end
