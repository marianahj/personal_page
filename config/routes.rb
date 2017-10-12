Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'personal_page#home', as: 'home'
  scope '/:locale' do
    get '/about_me', to: 'personal_page#about_me', as: 'about_me'
    get '/experience', to: 'personal_page#experience', as: 'experience'
    get '/education', to: 'personal_page#education', as: 'education'
    get '/contact', to: 'personal_page#contact', as: 'contact'
  end
end
