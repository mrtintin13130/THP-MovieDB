class SearchMovie
  def search(title)
    Tmdb::Api.key("da6f4749d2a814b4626fd0944eb2ca36")
    Tmdb::Api.language("fr")
    george = Tmdb::Movie.find(title)
  end

  def find_credit(id)
    Tmdb::Api.key("da6f4749d2a814b4626fd0944eb2ca36")
    Tmdb::Api.language("fr")
    clients = Tmdb::Movie.credits(id)
    #director = clients["crew"].map
    #clients.select{|key, hash| hash["job"] == "Director" }
    if Tmdb::Movie.credits(clients['id'])['crew'].blank? == false
      director = Tmdb::Movie.credits(clients['id'])['crew'].select { |x| x['job'] == 'Director' }[0]['name']
    else
      director = "Inconnu"
    end
    return director
  end
end
