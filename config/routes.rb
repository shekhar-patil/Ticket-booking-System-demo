Rails.application.routes.draw do
  resources :theaters do
    resources :shows do
      resources :screens
    end
  end

  resources :movies
  root to: 'movies#index'
  devise_for :users, skip: [:registrations], controllers: { sessions: 'users/sessions' }

  devise_scope :users do
    devise_for :users, path: 'customers', class_name: 'User', only: %i[registrations], controllers: { registrations: 'customers/users' }
  end

  devise_scope :users do
    devise_for :users, path: 'admins', class_name: 'User', only: %i[registrations], controllers: { registrations: 'admins/users' }
  end
end
