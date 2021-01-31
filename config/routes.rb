Rails.application.routes.draw do
	scope "(:locale)", locale: /en|pl/ do
    root 'contact#index'
    resources :contact, only: [:create]
    get '*unmatched_route', to: 'application#not_found'
  end
end
