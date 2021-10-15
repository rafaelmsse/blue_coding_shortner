Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get '/', to: 'links#index', as: 'index_links'
  get '/top100/', to: 'links#top', as: 'top_links'
  get '/new', to: 'links#new', as: 'new_link'
  get '/s/:slug', to: 'links#show', as: 'link'

  root to: "links#index"

end
