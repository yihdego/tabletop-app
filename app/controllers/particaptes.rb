post '/events/:id/participates' do
  p params
  p '*' * 40
  @event = Event.find(params[:id])
  user = User.find(session[:user_id])
  @event.users << user
  redirect "/events/#{@event.id}"
end
