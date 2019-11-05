Rails.application.routes.draw do
  get 'welcome/index'
  post 'fizzbuzz/computate'

  root 'welcome#index'
end
