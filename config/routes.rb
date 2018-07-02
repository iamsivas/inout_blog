Rails.application.routes.draw do
  root to: 'welcome#index'

  get '/about', to: 'welcome#about'
  get '/service', to: 'welcome#service'
  get '/contact', to: 'welcome#contact'
  post '/newcontact', to: 'welcome#newcontact'
  get '/career', to: 'welcome#career'
  get '/career/:id', to: 'welcome#get_career', as: 'to_apply'
  post '/jobpost/:id', to: 'welcome#applycareer'

  get '/admin', to: 'admin#index'
end
