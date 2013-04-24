Overflow::Application.routes.draw do
  root :to => "application#index"
  # get '/users/new' => "users#new", :as => :signup
  resources :users, except:[:index]
  resource :session
end
