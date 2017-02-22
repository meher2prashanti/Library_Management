Rails.application.routes.draw do
  devise_for :users
 root 'book#list'
  get 'book/new' ,to: 'book#new'
  post 'book/create',to: 'book#create'
  patch 'book/update'
  get 'book/list'
  get 'book/show'
  get 'book/edit'
  get 'book/delete'
  get 'book/update'
  get 'book/show_subjects'
end