class WelcomeController < ApplicationController
  def about
    render 'about'
  end

  def about
    render :"welcome/about"
  end

end