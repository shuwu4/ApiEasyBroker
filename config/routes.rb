Rails.application.routes.draw do
    # Rutas que tendrá la página web
    get '/apidemo', to: 'apidemo#index'
end
