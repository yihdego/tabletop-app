get '/sessions/new' do
  erb :'/sessions/new'
end

post '/sessions' do
  @user = User.login(params[:email], params[:password])
  if @user
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  else
    redirect '/sessions/new'
  end
end

delete '/sessions' do
  session.clear
  redirect '/'
end
