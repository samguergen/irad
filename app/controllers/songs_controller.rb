class SongsController < ApplicationController

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    album = Album.find(params[:album_id])
    song = album.songs.build(song_params)
    song.artist = album.artist

    if song.save
      redirect_to artist_album_song_path(album.artist, album, song)
    else
      redirect_to new_artist_album_song_path(album.artist, album, song)
    end
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    song = Song.find(params[:id])
    if song.update_attributes(song_params)
      redirect_to artist_album_song_path(song.artist, song.album, song)
    else
      redirect_to edit_artist_album_song_path(song.artist, song.album, song)
    end
  end

  def destroy
    song = Song.find(params[:id])
    artist = song.artist
    album = song.album
    song.destroy
    redirect_to artist_album_path(artist, album)
  end

  def song_params
    params.require(:song).permit(
      :title,
      :lyrics
      )
  end

end