Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: '/auth'

  scope '/api' do
    resources :companies, except: [:new, :edit]
  end

end
