class WelcomeController < ApplicationController
  def index
    @q = Artist.ransack(params[:q])
    @results = @q.result
  end

  def about
    render :"welcome/about"
  end

end