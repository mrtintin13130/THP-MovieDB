class MoviesController < ApplicationController
  def search
    if params[:movie].blank?
      flash[:info] = "Aucun film trouvé !"
      redirect_to '/'
    else
      title = params[:movie]
      @movie = SearchMovie.new.search(title)
    end
  end

  helper_method :credit

  def credit(id)
    @director = SearchMovie.new.find_credit(id)
  end
end
