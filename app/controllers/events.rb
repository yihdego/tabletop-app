get '/events/new' do
  erb :'/events/new'
end

post '/events' do
  @event = Event.create(params[:event_details], password: params[:password])
  @event.admin = session[:user_id]
  redirect "/events/#{@event.id}"
end

get '/events/:id' do
  @event = Event.find(params[:id])
  erb :'/events/show'
end
