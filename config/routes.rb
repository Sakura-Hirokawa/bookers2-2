Rails.application.routes.draw do
  get 'books/index'
  get 'books/show'
  get 'books/edit'
  devise_for :users
  root to: "homes#top"
end
