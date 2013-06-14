# -*- encoding : utf-8 -*-
Rts2Diplom::Application.routes.draw do


  resources :articles

  resources :reports

  resources :approbation_dissertations

  resources :main_stages

  resources :introduction_results

  resources :design_dissertations

  resources :experiments

  resources :theoretical_parts

  resources :stages_works

  resources :dissertations

  resources :attestations

  resources :disciplines

  resources :candidates

  resources :scientific_works_for_plans

  resources :work_plans do
    resources :disciplines
    resources :candidates
    resources :scientific_works_for_plans
  end

  resources :second_works

  resources :dissertation_represents

  resources :defenses

  resources :work_dissertations

  resources :scientific_works  do
    resources :dissertation_represents
    resources :defenses
    resources :second_works
    resources :work_dissertations
  end

  resources :disciplines_studies

  resources :exams

  resources :academic_works do
    resource :disciplines_studies
    resources :exams
  end

  resources :general_plans

  resources :chiefs

  resources :explanatory_nots

  resources :aspirants

  resources :users
  resource :welcome

  resources :sessions, only:[:new,:create]


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action
  match 'logout' => 'sessions#destroy', :as => :logout
  match 'set_role_adm' => 'users#set_role_adm'
  match 'set_role_work' => 'users#set_role_work'
  match 'set_role_asp' => 'users#set_role_asp'
  match 'set_role_chief' => 'users#set_role_chief'

  match 'send_1'=>'general_plans#send_1'
  match 'send_w1/:id'=>'work_plans#send_w1',:as=>"work_plan_send1"
  match 'send_2/:id'=>'general_plans#send_2',:as=>'general_plan_send2'
  match 'send_3/:id'=>'general_plans#send_3',:as=>'general_plan_send3'
  match 'send_w2/:id'=>'work_plans#send_w2',:as=>'work_plan_send2'
  match 'send_w3/:id'=>'work_plans#send_w3',:as=>'work_plan_send3'


  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
