Rails.application.routes.draw do

  root 'posts#index'

  resources "posts" do
    member do
      get 'confirm_delete'
      get 'legends'
    end
    collection do
      get 'published'
    end
  end

  get 'locales/:id', to: 'locales#change_language', as: 'language' 




  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
