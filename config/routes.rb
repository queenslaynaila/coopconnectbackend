Rails.application.routes.draw do
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
  get "/seekerprofile" , to: 'seekers#show'
  patch "/seekerprofile" , to: 'seekers#update'
  post '/signupseekers' , to: 'seekers#create'
  patch

  get "/companyprofile" , to: 'employers#show'
  patch "/companyprofile" , to 'employers#update'
  post '/signupemployers' , to: 'employers#create'



  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'




end
