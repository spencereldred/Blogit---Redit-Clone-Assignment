Blogit::Application.routes.draw do

  root to: 'posts#index'
  resources :posts, :comments do
    resources :comments, :votes
  end


    # root :to => 'welcome#index'

  match "/auth/:provider/callback" => "sessions#create"
  match "/signout" => "sessions#destroy", :as => :signout
end

#          root        /                                                 posts#index
#        post_comments GET    /posts/:post_id/comments(.:format)                comments#index
#                      POST   /posts/:post_id/comments(.:format)                comments#create
#     new_post_comment GET    /posts/:post_id/comments/new(.:format)            comments#new
#    edit_post_comment GET    /posts/:post_id/comments/:id/edit(.:format)       comments#edit
#         post_comment GET    /posts/:post_id/comments/:id(.:format)            comments#show
#                      PUT    /posts/:post_id/comments/:id(.:format)            comments#update
#                      DELETE /posts/:post_id/comments/:id(.:format)            comments#destroy
#           post_votes GET    /posts/:post_id/votes(.:format)                   votes#index
#                      POST   /posts/:post_id/votes(.:format)                   votes#create
#        new_post_vote GET    /posts/:post_id/votes/new(.:format)               votes#new
#       edit_post_vote GET    /posts/:post_id/votes/:id/edit(.:format)          votes#edit
#            post_vote GET    /posts/:post_id/votes/:id(.:format)               votes#show
#                      PUT    /posts/:post_id/votes/:id(.:format)               votes#update
#                      DELETE /posts/:post_id/votes/:id(.:format)               votes#destroy
#                posts GET    /posts(.:format)                                  posts#index
#                      POST   /posts(.:format)                                  posts#create
#             new_post GET    /posts/new(.:format)                              posts#new
#            edit_post GET    /posts/:id/edit(.:format)                         posts#edit
#                 post GET    /posts/:id(.:format)                              posts#show
#                      PUT    /posts/:id(.:format)                              posts#update
#                      DELETE /posts/:id(.:format)                              posts#destroy
#     comment_comments GET    /comments/:comment_id/comments(.:format)          comments#index
#                      POST   /comments/:comment_id/comments(.:format)          comments#create
#  new_comment_comment GET    /comments/:comment_id/comments/new(.:format)      comments#new
# edit_comment_comment GET    /comments/:comment_id/comments/:id/edit(.:format) comments#edit
#      comment_comment GET    /comments/:comment_id/comments/:id(.:format)      comments#show
#                      PUT    /comments/:comment_id/comments/:id(.:format)      comments#update
#                      DELETE /comments/:comment_id/comments/:id(.:format)      comments#destroy
#        comment_votes GET    /comments/:comment_id/votes(.:format)             votes#index
#                      POST   /comments/:comment_id/votes(.:format)             votes#create
#     new_comment_vote GET    /comments/:comment_id/votes/new(.:format)         votes#new
#    edit_comment_vote GET    /comments/:comment_id/votes/:id/edit(.:format)    votes#edit
#         comment_vote GET    /comments/:comment_id/votes/:id(.:format)         votes#show
#                      PUT    /comments/:comment_id/votes/:id(.:format)         votes#update
#                      DELETE /comments/:comment_id/votes/:id(.:format)         votes#destroy
#             comments GET    /comments(.:format)                               comments#index
#                      POST   /comments(.:format)                               comments#create
#          new_comment GET    /comments/new(.:format)                           comments#new
#         edit_comment GET    /comments/:id/edit(.:format)                      comments#edit
#              comment GET    /comments/:id(.:format)                           comments#show
#                      PUT    /comments/:id(.:format)                           comments#update
#                      DELETE /comments/:id(.:format)                           comments#destroy
#                             /auth/:provider/callback(.:format)                sessions#create
#              signout        /signout(.:format)                                sessions#destroy