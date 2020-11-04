Rails.application.routes.draw do
  resources "posts" do
    member do
      get 'confirm_delete'
      get 'legends'
    end
    collection do
      get 'published'
    end
  end




  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
