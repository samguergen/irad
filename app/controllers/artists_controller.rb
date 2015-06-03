class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def create
    artist = Artist.new(artist_params)
    if artist.save
      redirect_to artist_path(artist)
    else
      @artist = artist
      render 'new'
    end
  end

  def new
    @artist = Artist.new
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    artist = Artist.find(params[:id])
    if artist.update_attributes(artist_params)
      redirect_to artist_path(artist)
    else
      redirect_to edit_artist_path(artist)
    end
  end

  def destroy
    artist = Artist.find(params[:id])
    artist.destroy
    redirect_to artists_path
  end

  def artist_params
    params.require(:artist).permit(
      :avatar,
      :stage_name,
      :birth_name,
      :date_of_birth,
      :description)
  end
end