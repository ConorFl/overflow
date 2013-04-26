Overflow::Application.routes.draw do
  root :to => "application#index"
  resources :users, except:[:index]
  resource :session
  resources :questions do
    resources :votes
  end

  resources :answers
  match "/questions/:id/answers/new" => "answers#new"
  #post "/questions/:id/votes" => "votes#create", :as => :vote_up_question
  resources :responses
  match "/:respondable_type/:id/responses/new" => "responses#new"
  resources :votes
  match "/:id/votes/upvotes" => "votes#upvotes"
  match "/:id/votes/downvotes" => "votes#downvotes"
end
