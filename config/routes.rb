Rails.application.routes.draw do
  get 'articles/new'

  get 'articles/create'

  get 'welcome/index'

  resources :articles do
    resources :comments
  end

  get 'feed' => 'articles#feed'

  root 'welcome#index'
end
