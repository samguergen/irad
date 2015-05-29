class SearchController < ApplicationController
  def search
    if params[:q]
      term = '%' + params[:q].strip.downcase + '%'
      @artists = Artist.where('lower(stage_name) like ?', term)
      @albums = Album.where('lower(title) like ?', term)
      @songs = Song.where('lower(title) like ?', term)
    end
  end
end