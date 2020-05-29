Rails.application.routes.draw do

  devise_for :models
resources :link
resources :links do
  member do
    put "like", to: "links#upvote"
    put "dislike", to: "links#downvote"
  end
end
resources :welcome

  get 'welcome/index'
  root 'welcome#index'


end
