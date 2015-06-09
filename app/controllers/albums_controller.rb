class AlbumsController < ApplicationController

  def show
    @album = Album.find(params[:id])
  end

  def new
    @album = Album.new
  end

  def create
    artist = Artist.find(params[:artist_id])
    album = Album.new(album_params)
    album.artist = artist

    if album.save
      redirect_to artist_album_path(artist, album)
    else
      @album = album
      render 'new'
    end
  end

  def edit
    @album = Album.find(params[:id])
  end

  def update
    album = Album.find(params[:id])
    if album.update_attributes(album_params)
      redirect_to artist_album_path(album.artist, album)
    else
      redirect_to edit_artist_album_path(album.artist, album)
    end
  end

  def destroy
    album = Album.find(params[:id])
    album.destroy
    redirect_to edit_artist_path(album.artist)
  end

  def album_params
    params.require(:album).permit(
      :title,
      :release_year,
      :description,
      :avatar
      )
  end
end