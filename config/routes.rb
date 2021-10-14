Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/links/', to: 'patients#index', as: 'index_links'
  get '/top100/', to: 'patients#top', as: 'top_links'
  get '/new/:slug', to: 'patients#new', as: 'new_link'
  get '/:slug', to: 'patients#show', as: 'link'

end
