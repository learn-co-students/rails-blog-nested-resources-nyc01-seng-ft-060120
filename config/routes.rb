# == Route Map
#
#            Prefix Verb   URI Pattern                                 Controller#Action
#         post_tags GET    /posts/:post_id/tags(.:format)              tags#index
#                   POST   /posts/:post_id/tags(.:format)              tags#create
#      new_post_tag GET    /posts/:post_id/tags/new(.:format)          tags#new
#          edit_tag GET    /tags/:id/edit(.:format)                    tags#edit
#               tag GET    /tags/:id(.:format)                         tags#show
#                   PATCH  /tags/:id(.:format)                         tags#update
#                   PUT    /tags/:id(.:format)                         tags#update
#                   DELETE /tags/:id(.:format)                         tags#destroy
#        user_posts GET    /users/:user_id/posts(.:format)             posts#index
#                   POST   /users/:user_id/posts(.:format)             posts#create
#     new_user_post GET    /users/:user_id/posts/new(.:format)         posts#new
#         edit_post GET    /posts/:id/edit(.:format)                   posts#edit
#              post GET    /posts/:id(.:format)                        posts#show
#                   PATCH  /posts/:id(.:format)                        posts#update
#                   PUT    /posts/:id(.:format)                        posts#update
#                   DELETE /posts/:id(.:format)                        posts#destroy
#             users GET    /users(.:format)                            users#index
#                   POST   /users(.:format)                            users#create
#          new_user GET    /users/new(.:format)                        users#new
#         edit_user GET    /users/:id/edit(.:format)                   users#edit
#              user GET    /users/:id(.:format)                        users#show
#                   PATCH  /users/:id(.:format)                        users#update
#                   PUT    /users/:id(.:format)                        users#update
#                   DELETE /users/:id(.:format)                        users#destroy
#     post_comments GET    /posts/:post_id/comments(.:format)          comments#index
#                   POST   /posts/:post_id/comments(.:format)          comments#create
#  new_post_comment GET    /posts/:post_id/comments/new(.:format)      comments#new
# edit_post_comment GET    /posts/:post_id/comments/:id/edit(.:format) comments#edit
#      post_comment GET    /posts/:post_id/comments/:id(.:format)      comments#show
#                   PATCH  /posts/:post_id/comments/:id(.:format)      comments#update
#                   PUT    /posts/:post_id/comments/:id(.:format)      comments#update
#                   DELETE /posts/:post_id/comments/:id(.:format)      comments#destroy
#             posts GET    /posts(.:format)                            posts#index
#                   POST   /posts(.:format)                            posts#create
#          new_post GET    /posts/new(.:format)                        posts#new
#                   GET    /posts/:id/edit(.:format)                   posts#edit
#                   GET    /posts/:id(.:format)                        posts#show
#                   PATCH  /posts/:id(.:format)                        posts#update
#                   PUT    /posts/:id(.:format)                        posts#update
#                   DELETE /posts/:id(.:format)                        posts#destroy

RailsBlog::Application.routes.draw do

  resources :users
  resources :tags


  resources :posts do 
    resources :comments
  end
  
end
