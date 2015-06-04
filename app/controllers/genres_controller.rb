class GenresController < ApplicationController

  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new
  end

  def create
    genre = Genre.create(genre_params)
    if genre.save
      redirect_to genre_path(genre)
    else
      @genre = genre
      render 'new'
    end
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    genre = Genre.find_or_create_by(genre_params)
    if genre.save
      redirect_to genre_path(genre)
    else
      redirect_to edit_genre_path
    end
  end

  def destroy
    genre = Genre.find(params[:id])
    genre.destroy
    redirect_to genres_path
  end

  def genre_params
    params.require(:genre).permit(
      :name,
      :description)
  end

end