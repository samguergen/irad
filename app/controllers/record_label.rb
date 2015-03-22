get '/record_labels' do
  @records = RecordLabel.all
  erb :"record_labels/index"
end

get '/record_labels/new' do
  erb :"record_labels/new"
end


get '/record_labels/:id/edit' do
  @label_to_edit = RecordLabel.find_by(:id => params[:id])
  erb :"record_labels/edit"
end


get '/record_labels/:id' do
  @the_label = RecordLabel.find_by(:id => params[:id])
  erb :"record_labels/show"
end

put '/record_labels/:id' do
  @updated_label = RecordLabel.find_by(:id =>params[:id])
  if @updated_label
    @updated_label.name = params[:name]
    @updated_label.founding_date = params[:founding_date]

    if @updated_label.save
      redirect "/record_labels/#{@updated_label.id}"
      # redirect '/record_labels/#{params[:id]}'
    else
      [500, "There was a problem with the information you updated"]
    end
  else
    [404,"The information couldn't be updated"]
  end
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