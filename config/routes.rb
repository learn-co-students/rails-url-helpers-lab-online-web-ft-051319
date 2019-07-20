Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/students/:id/activate" => "students#activate_student", :as => "activate_student"
  resources :students, only: [:index, :show]
end
