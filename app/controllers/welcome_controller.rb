class WelcomeController < ApplicationController
  def index
    @q = Artist.ransack(params[:q])
    @results = @q.result
  end
end