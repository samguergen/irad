require 'sinatra'

get '/sealions' do
  erb :index, locals: {sealions: Sealion.all}

end

get '/sealions/:id' do
  lion = Sealion.find_by_id(params[:id])
  if lion
    erb :show, locals: {cur_lion: lion}
  else
    [500, "Something went wrong. Sorry!"]
  end
end


post '/sea_post' do
  redirect '/sealions'
end

put '/sea_update' do
  redirect '/sealions'
end

delete '/sea_delete' do
  redirect '/sealions'
end
