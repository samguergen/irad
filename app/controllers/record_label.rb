get '/record_labels' do
  @records = RecordLabel.all
  erb :"record_labels/index"
end

get '/record_labels/new' do
  erb :"record_labels/new"
end


get '/record_labels/:id/edit' do
  erb :"record_labels/edit"
end


get '/record_labels/:id' do
  @the_label = RecordLabel.find_by(:id => params[:id])
  erb :"record_labels/show"
end



post '/record_labels' do
  @new_label = RecordLabel.new(:name => params[:name],
                        :founding_date => params[:founding])


    if @new_label.save
    redirect "/record_labels/#{@new_label.id}"
  else
    [404, "This record label couldn't be created."]
  end
end

delete '/record_labels/:id/delete' do

@record_to_delete = RecordLabel.find_by(:id => params[:id])
@record_to_delete.destroy

redirect '/record_labels'

end