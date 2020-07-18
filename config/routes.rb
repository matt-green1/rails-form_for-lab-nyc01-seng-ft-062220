Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:show, :new, :create, :edit, :update]
  resources :school_classes, only: [:show, :new, :create, :edit, :update]
  # resources :articles, only: [:index, :show, :new, :create, :update]
  # get 'articles/:id/edit', to: 'articles#edit', as: 'edit_article'

end
