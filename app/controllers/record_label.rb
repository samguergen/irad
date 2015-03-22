get '/record_labels' do
  @records = RecordLabel.all
  erb :"record_labels/index"
end


get '/record_labels/:id/edit' do
  erb :"record_labels/edit"
end


get '/record_labels/:id' do
  @the_label = RecordLabel.find_by(:id => params[:id])
  erb :"record_labels/show"
end


get '/record_labels/new' do
  erb :"record_labels/new"
end


# post '/record_labels' do
# end