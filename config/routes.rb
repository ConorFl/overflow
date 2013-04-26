Overflow::Application.routes.draw do
  root :to => "application#index"
  resources :users, except:[:index]
  resource :session
  
  resources :questions do
    resources :votes
     resources :answers
  end
    # resources :answers
  match "/answers/:id/edit" => "answers#edit" , :as => :edit_answer
  match "/answers/:id" => "answers#update" 
  # match "/answers" => "answers#create"
  # match "/answers/:answer_id/edit" =>"answers#edit"
  # match "/answers/:answer_id" =>"answers#update"

  #post "/questions/:id/votes" => "votes#create", :as => :vote_up_question
  resources :responses
  match "/:respondable_type/:id/responses/new" => "responses#new"
  resources :votes
  match "/:id/votes/upvotes" => "votes#upvotes"
  match "/:id/votes/downvotes" => "votes#downvotes"
end
