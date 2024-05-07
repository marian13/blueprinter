Rails.application.routes.draw do
  get "up", to: "rails/health#show", as: :rails_health_check

  namespace :web do
    get "pages/home", to: "pages#home"

    namespace :pages do
      namespace :home do
        namespace :frames do
          post "create_app_button/generate", to: "create_app_button#generate"
          post "create_app_button/generating", to: "create_app_button#generating"
          post "create_app_button/download", to: "create_app_button#download"
        end
      end
    end
  end

  root "web/pages#home"
end
