class ArtistGenresController < ApplicationController

  def edit
    @artist = Artist.find(params[:artist_id])
  end

  def update
    artist = Artist.find(params[:artist_id])
    genres_array = parse_string_to_a(params[:genres])
    artist.update_genres(genres_array)

    if artist.save
      redirect_to artist_path(artist)
    else
      redirect_to edit_artist_artist_genres_path
    end
  end

end