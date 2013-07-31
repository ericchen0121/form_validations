get '/' do
  @events = Event.all
  erb :index
end

get '/events/:id/show' do |id|
  @event = Event.find(id)
  erb :event_show
end

get '/events/new' do
  erb :event_new
end

post '/events/create' do
  @new_event = Event.create(date: params[:date], title: params[:title], organizer_name: params[:organizer_name], organizer_email: params[:organizer_email])
  erb :event_create
end
