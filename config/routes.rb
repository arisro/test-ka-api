KaApi::Application.routes.draw do
  root 'general#not_found'
  
  mount KaModUsers::Engine => '/modusers/'
  mount KaExtUsers::Engine => '/extusers/'
end