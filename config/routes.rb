Overflow::Application.routes.draw do
  root :to => "application#index"
  resources :users, except:[:index]
  resource :session
  resources :questions
  resources :answers
  match "/questions/:id/answers/new" => "answers#new"
end
