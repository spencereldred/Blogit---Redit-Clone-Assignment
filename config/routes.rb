Blogit::Application.routes.draw do

  root to: 'posts#index'
  resources :posts, :comments do
    resources :comments, :votes
  end


    # root :to => 'welcome#index'

  match "/auth/:provider/callback" => "sessions#create"
  match "/signout" => "sessions#destroy", :as => :signout


end
