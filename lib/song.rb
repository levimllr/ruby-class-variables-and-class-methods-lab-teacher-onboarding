class Song

  attr_accessor :name, :artist, :genre

  @@all = []
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << @artist
    @@genres << @genre
    @@all << {:name => name, :artist => artist, :genre => genre}
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_count_hash = {}
    @@genres.each do |genre|
      if genre_count_hash.include?(genre)
        genre_count_hash[genre] += 1
      else
        genre_count_hash[genre] = 1
      end
    end
    return genre_count_hash
  end

  def self.artist_count
    artist_count_hash = {}
    @@artists.each do |artist|
      if artist_count_hash.include?(artist)
        artist_count_hash[artist] += 1
      else
        artist_count_hash[artist] = 1
      end
    end
    return artist_count_hash
  end

end