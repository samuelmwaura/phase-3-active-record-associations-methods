class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    self.songs.count #A genre can ave several songs
  end

  def artist_count
    # return the number of artists associated with the genre
    self.artists.count #A genre has many artist who have created songs in it.
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    self.artists.map do |artist| #will take every artist and extract the name
      artist.name
    end
  end
end
