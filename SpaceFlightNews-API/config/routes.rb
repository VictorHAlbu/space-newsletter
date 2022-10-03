Rails.application.routes.draw do
  
  scope '/api' do
    resources :articles do
      resources :launches
      resources :events
    end
    get '', to: 'home#index'
    
  end

end
