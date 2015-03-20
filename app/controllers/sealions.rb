require 'sinatra'

get '/sealions/new' do
  erb :new
end

get '/sealions/:id/edit' do
  lion_to_update = Sealion.find_by_id(params[:id])
  erb :edit, locals: {lion: lion_to_update}
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

put '/sealions/:id' do
  cur_lion = Sealion.find_by(id: params[:id])

  if cur_lion
    cur_lion.name = params[:name]
    cur_lion.age = params[:age]
    cur_lion.quirk = params[:quirk]

    if cur_lion.save
      redirect "/sealions/#{cur_lion.id}"
    else
      [500, 'something went wrong']
    end

  else
    [404, "no sealion found"]
  end

end


delete '/sea_delete' do
  redirect '/sealions'
end
