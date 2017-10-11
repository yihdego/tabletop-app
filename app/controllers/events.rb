get '/events/new' do
  erb :'/events/new'
end

post '/events' do
  @event = Event.create(params[:event_details])
  @event.admin = session[:user_id]
  redirect "/events/#{@event.id}"
end

get '/events/:id' do
  @event = params[:id]
  erb :'/events/show'
end
