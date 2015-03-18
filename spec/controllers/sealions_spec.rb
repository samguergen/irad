require_relative '../spec_helper'

describe 'Sealions Controller' do

  it 'Should get the /sealions route' do
    get '/sealions'
    expect(last_response).to be_ok
    expect(last_response.body).to include('Welcome to the Sealions page')
  end

  it 'Should process the post/sea_post route' do
    post '/sea_post'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response.status).to eq(200)
    expect(last_response.body).to include('Welcome to the Sealions page!')
  end

  it 'Should process the put/sea_update route' do
    put '/sea_update'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response).to be_ok
    expect(last_response.body).to include('Welcome to the Sealions page!')
  end

  it 'Should process the delete/sea_delete route' do
    delete '/sea_delete'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response).to be_ok
    expect(last_response.body).to include('Welcome to the Sealions page!')
  end
end
