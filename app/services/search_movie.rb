class SearchMovie
  def search(title)
    Tmdb::Api.key("da6f4749d2a814b4626fd0944eb2ca36")
    Tmdb::Api.language("fr")
    george = Tmdb::Movie.find(title)
  end
end
