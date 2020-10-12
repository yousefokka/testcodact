require 'api_constraints.rb'
  Rails.application.routes.draw do

    devise_for :users
      namespace :api do
        namespace :v1 do
          resources :sessions, :only => [:create, :destroy] 
          resources :jobs 
          resources :ideas 

          resources :users, :only => [:show, :create, :update, :destroy]  do 
           member do   
             get "profile" => 'profiles#show'
             post "profile" => 'profiles#create'
             put "profile" => 'profiles#update'
             delete "profile" => 'profiles#destroy'
          end 
          member do
            get "Jobfavoutit" => 'jobfavourit#index'
            get "Jobfavoutit/:id" => 'jobfavourit#show'
            post "Jobfavoutit" => 'jobfavourit#create'
            put "Jobfavoutit" => 'jobfavourit#update'
            delete "Jobfavoutit/:id" => 'jobfavourit#destroy'
          end
          member do
            get "Ideafavoutit" => 'ideafavourit#index'
            get "Ideafavoutit/:id" => 'ideafavourit#show'
            post "Ideafavoutit" => 'ideafavourit#create'
            put "Ideafavoutit" => 'ideafavourit#update'
            delete "Ideafavoutit/:id" => 'ideafavourit#destroy'
          end
        end

          post "submittings" => 'submittings#create' 
          get "submittings" => 'submittings#userapplication'
          get "submittings/:id" => 'submittings#show'
          get "submittingsa" => 'submittings#Jobapplication'
          put "Responce/:id" => 'submittings#update' 

          get "submittingsall" => 'submittings#all'

          post "funds" => 'funds#create'
          get "funds" => 'funds#sponserapplication'
          get "funds/:id" => 'funds#show'
          get "ideafund" => 'funds#Ideaapplication'
          put "ResponceFund/:id" => 'funds#update' 



          get "Jobsearch" => 'search#show'
          get "Ideasearch" => 'search#show2'

        
          get "Jobhome" => "jobhome#index" 
          get "Jobhome/:id" => "jobhome#show" 
          get "Ideahome" => "ideahome#index"
          get "Ideahome/:id" => "ideahome#show" 
          
          post "Response"=> 'jobresponses#create'

       

       end 
      end
    end
  
