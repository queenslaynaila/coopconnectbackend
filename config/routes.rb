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

  resources :savedjobs
  resources :internships
  resources :jobs
  resources :experiences
  resources :educations
  resources :employers
  resources :seekers
  resources :accounts
  resources :categories

  resources :seekers do
    resources :employers  #enables seekers/id/employers
  end


  resources :seekers do
    member do
      get 'minesavedjobs'
    end
    member do
      get 'mysavedinternshipsagain'
    end
    member do
      get 'mineappliedjobs'
    end
    member do
      get 'mineappliedinternships'
    end
    member do
      get 'mysavedcompanies'
    end
    member do
      get 'myappliedemployers',only:[:employer]
    end
  end

  

  post "/seekersignup", to: 'application#createseeker'
  post  "/employersignup", to:  'application#createemployer'
  post '/login', to: 'sessions#create'

  get "/seekers/:id/savedjobs",to: 'seekers#minesavedjobs'
  get "seekers/:id/savedinternships", to: 'seekers#mysavedinternshipsagain'
  get "seekers/:id/appliedjobs",to:'seekers#mineappliedjobs'
  get "seekers/:id/appliedinternships", to:'seekers#mineappliedinternships'
  get "/me", to: "sessions#show"

   delete '/logout', to: 'sessions#destroy'


end
