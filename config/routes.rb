Rails.application.routes.draw do
  resources :socialprofiles
  resources :keyskills
  resources :internshipapplications
  resources :savedinternships
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

  resources :savedjobs do
    member do
      get 'minesavedjobs'
    end
  end

  post '/login', to: 'sessions#create'
  get "/me", to: "sessions#show"
  delete '/logout', to: 'sessions#destroy'
  #let these be on application to create relevant account record each time a signup is complete
  post "/seekersignup", to: 'application#createseeker'
  post  "/employersignup", to:  'application#createemployer'
   get "/seekers/:id/savedjobs",to: 'seekers#minesavedjobs'
end
