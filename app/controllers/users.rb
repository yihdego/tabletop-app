get '/users/new' do
  erb :'/users/new'
end

post '/users' do
  @user = User.create(params[:user_details])
  redirect "/users/#{@user.id}"
end

get '/users/:id' do
  @user = User.find(params[:id])
  erb :'/users/show'
end
