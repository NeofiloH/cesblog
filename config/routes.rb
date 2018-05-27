Rails.application.routes.draw do
  get 'home/inicio'

  get 'home/servicios'

  get 'home/contacto'
  post 'home/contacto'

  get 'home/aplicacion'

  root :to => 'home#inicio'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
