Rails.application.routes.draw do
  root "questions#index"
  #get "questions/index"
  #get "questions/submit"
  #get "questions/result"
  get "up" => "rails/health#show", as: :rails_health_check
  post "/submit", to: "questions#submit", as: "submit_questions"
  get "/result", to: "questions#result", as: "result_questions"
end
