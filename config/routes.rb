Cleaning::Application.routes.draw do
  root :to => 'page#home'
  get "enquiry/new"

  post "enquiry/create"

  get "enquiry/success"

  get "page/about"

  get "page/services"

  get "page/contact"
end
