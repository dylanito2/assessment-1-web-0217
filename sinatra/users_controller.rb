class UsersController < ApplicationController

  get '/users/new' do
    erb :'users/new'
  end

  post '/users' do
    User.create(params)
    redirect to '/'
  end

  get '/users' do
    @users = User.all
    erb :index
  end

  get '/users/:id'
    @user = User.find(params[:id])
    erb :show
  end

  get '/users/:id/edit' do
    @user = User.find(params[:id])
    erb :edit
  end

  post '/users/:id' do
    @user = user.find(params[:id])
    @user.update(params)
  end

  delete '/users/:id/' do
    @user = user.find(params[:id])
    @user.destroy
  end

end


# Write the controller action as if this was a rails controller
# Write the url that sends a user to the action. I have done the first one for you.
