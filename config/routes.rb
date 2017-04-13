Rails.application.routes.draw do
  categories = { works: /(albums)|(movies)|(books)/ }
  get ':works', to: 'works#index', as: 'works', constraints: categories
  get ':works/new', to: 'works#new', as: 'new_work', constraints: categories
  post ':works', to: 'works#create', constraints: categories

  get 'works/:id', to: 'works#show', as: 'work'
  get 'works/:id/edit', to: 'works#edit', as: 'edit_work'
  patch 'works/:id/', to: 'works#update'
end
