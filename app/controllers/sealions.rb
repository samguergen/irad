require 'sinatra'

get '/sealions/new' do
  erb :new
end

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

post '/sealions' do
  new_lion = Sealion.create(name: params[:name], age: params[:age], quirk: params[:quirk])
  if new_lion.save
    redirect "sealions/#{new_lion.id}"
  else
    [500, "Something went wrong. Sorry!"]
  end
end

put '/sea_update' do
  redirect '/sealions'
end

delete '/sea_delete' do
  redirect '/sealions'
end
