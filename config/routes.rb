Rails.application.routes.draw do
  
  root to: "bloggers#index"

  resources :bloggers do
    resources :recipes, except: [:index, :show]
  end
  resources :recipes, only: [:index, :show] do
      member do
        post 'add_cookbook'
        delete 'remove_cookbook'
      end
    end

end
