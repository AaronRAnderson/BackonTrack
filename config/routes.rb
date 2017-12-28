Rails.application.routes.draw do
  root to: "pages#home"


  get '/chiropractic', to: 'pages#chiropractic'

  get '/massage', to: 'pages#massage'

  get '/hypnosis', to: 'pages#hypnosis'

  get '/review-us', to: 'pages#reviewus'

  get '/about', to: 'pages#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
