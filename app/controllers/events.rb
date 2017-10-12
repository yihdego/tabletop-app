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

put '/events/:id' do
  @event = Event.find(params[:id])
  @tag = Tag.find_by(name: params[:tag_name])
  if @tag == nil
    @tag = Tag.create(name: params[:tag_name])
    @event.tags << @tag
  else
    @event.tags << @tag
  end
  redirect "/events/#{@event.id}"
end
