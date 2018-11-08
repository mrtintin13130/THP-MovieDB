class MoviesController < ApplicationController
  def search
    title = params[:movie]
    @movie = SearchMovie.new.search(title)
  end
end
