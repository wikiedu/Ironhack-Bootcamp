Rails.application.routes.draw do
  get '/' => 'visitors#home'
  get '/company/about' => 'visitors#about', as: :about
  get '/blog' => 'visitors#blog'
  get '/contact' => 'visitors#contact'
end
