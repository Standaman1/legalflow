Rails.application.routes.draw do
 
  # get 'user/create'
  # get 'user/edit'
  # get 'user/update'
  # get 'user/show'
  # get 'user/destroy'
  # get 'stageones/new'
  # get 'stageones/create'
  # get 'stageones/index'
  # get 'stageones/show'
  # get 'stageones/edit'
  # get 'stageones/update'
  # get 'stageones/destroy'
  # get 'session/new'
  # get 'session/create'
  # get 'session/destroy'
#   get 'documents/new'
#   get 'documents/create'
#   get 'documents/index'
#   get 'documents/show'
#   get 'documents/edit'
#   get 'documents/update'
#   get 'documents/destroy'

    #Session Form

    get '/login' => 'session#new'
    post '/login' => 'session#create'
    delete '/login' => 'session#destroy'




    #Root

    resources :templates
    root to: 'templates#home'

    get '/templates/:id' => 'templates#show'


    # resources :stageone


    resources :documents
    delete '/documents/:id' => 'documents#destroy', as: 'delete_document'

    resources :users
    get '/users/new' => 'users#new'
    post '/users/new' => 'users#create'

    

    # get '/new_user' => 'user#new'

    # post '/new_user' => 'user#create'
    #Routes for documents model -----------

    #Create

    #Blank Form

    # get '/documents/new' => 'documents#new', as: 'new_document'

    # #Form submit, DB create, redirect
    
    # post '/documents/new' => 'documents#create'

    # #Read

    # #Index of all documents

    # get '/documents' => 'documents#index'

    # #Show page, details of all topics by ID

    # get '/documents/:id' => 'documents#show', as: 'document'

    #Update

    #Prefilled form



    #Form submit, update, redirect


    #Delete

    #Delete and return to page

end
