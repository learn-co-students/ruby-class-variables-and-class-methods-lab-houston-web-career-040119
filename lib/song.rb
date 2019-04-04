class Song

  @@count = 0
  @@artists = []
  @@genres = []

  attr_reader :name, :artist, :genre

  def initialize(name, artist, genre)

    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << artist
    @@genres << genre

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
      !!genre_count_hash[genre] ? genre_count_hash[genre] += 1 : genre_count_hash[genre] = 1
    end
    genre_count_hash
  end

  def self.artist_count
    artists_count_hash = {}
    @@artists.each do |artist|
      !!artists_count_hash[artist] ? artists_count_hash[artist] += 1 : artists_count_hash[artist] = 1
    end
    artists_count_hash
  end


end
