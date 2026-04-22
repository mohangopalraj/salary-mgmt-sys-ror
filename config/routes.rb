Rails.application.routes.draw do
  root "employees#index"
  resources :employees
  get "/insights", to: "insights#index"
  get "/insights/country", to: "insights#country_stats"
  get "/insights/job", to: "insights#job_title_stats"
end
