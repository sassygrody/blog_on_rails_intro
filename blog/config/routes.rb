Blog::Application.routes.draw do   # this syntax might be wrrrooong

  resources :articles

  # get '/' => "welcome#index"
  root "welcome#index"

  # create a new article thru form
  post "/articles/new" => "articles#new"

  # after creating new article, show me that article
  get "/articles/:id(.:format)" => "articles#show"

  #list all articles
  get "/articles(.:format)" => "articles#index"

  patch	 '/articles/:id(.:format)' => "articles#update"

  delete '/articles/:id(.:format)' => "articles#destroy"

end
