get '/' do
  p params
  if params[:search]
    @events = Event.where("name LIKE ?", "%#{params[:search]}%")
    tags = Tag.where("name LIKE ?", "%#{params[:search]}%")
    p @events
    p tags
    tags.each do |tag|
      @events = @events + tag.events
    end
    @events = @events.uniq
  end
  erb :index
end
