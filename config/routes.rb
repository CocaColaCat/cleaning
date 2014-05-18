Cleaning::Application.routes.draw do
  root :to => 'page#home'
  get "enquiry/new"

  post "enquiry/create"

  get "page/about"

  get "page/services"

  get "page/contact"
end
