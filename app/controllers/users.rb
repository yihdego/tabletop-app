get '/users/new' do
  erb :'/users/new'
end

post '/users' do
  @user = User.new(params[:user_details])
  @user.password = params[:password]
  @user.save
  if @user.valid?
    redirect "/users/#{@user.id}"
  else
    redirect 'users/new'
  end
end

get '/users/:id' do
  @user = User.find(params[:id])
  erb :'/users/show'
end
