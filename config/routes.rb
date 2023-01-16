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
      get 'myappliedemployers'
    end
  end

  resources :employers do
     member do
       get "postedjobs"
     end
     member do
      get "savedprofiles"
     end
     member do
      get "postedinternships"
     end
     member do
      get "seekersapplied"
     end
  end

  resources :seekers do
    resources :employers  #enables seekers/id/employers
    resources :experiences #enables seekers/id/experiences
    resources :educations #enables sekekers/id/educations
    resources :keyskills     #enables seekers/id/keyskills
  end



  post "/seekersignup", to: 'application#createseeker'
  post  "/employersignup", to:  'application#createemployer'
  post '/login', to: 'sessions#create'

  get "/employers/:id/jobs",to: 'employers#postedjobs'
  get "/employers/:id/internships",to: 'employers#postedinternships'
  get "/employers/:id/savedprofiles",to: 'employers#savedprofiles'
  get "/employers/:id/applicants",to: 'employers#seekersapplied'



  get "/seekers/:id/savedjobs",to: 'seekers#minesavedjobs'
  get "seekers/:id/savedinternships", to: 'seekers#mysavedinternshipsagain'
  get "seekers/:id/appliedjobs",to:'seekers#mineappliedjobs'
  get "seekers/:id/appliedinternships", to:'seekers#mineappliedinternships'
  get "seekers/:id/savedcompanies", to: "seekers#mysavedcompanies"

   delete '/logout', to: 'sessions#destroy'


end
