class Song
    attr_reader :name, :artist, :genre 

    @@artists = [] 
    @@genres = []
    @@count = 0
    @@songs = []

    def initialize(name,artist,genre)
        @name = name
        @artist = artist 
        @genre = genre 
        @@count += 1 
        @@artists << artist
        @@genres << genre
        @@songs << self  
    end

    def self.count 
        @@count 
    end 

    def self.artists 
        results = []
        @@artists.each do |artist|
            if !results.include?(artist)
                results << artist 
            end 
        end 
        results 
    end

    def self.genres 
        results = []
        @@genres.each do |genre|
            if !results.include?(genre)
                results << genre  
            end 
        end 
        results 
    end

    def self.genre_count
        results = {}
        @@songs.each do |song|
            if !results[song.genre]
                results[song.genre] = 0
            end
            results[song.genre] += 1
        end
        results 
    end

    def self.artist_count
        results = {}
        @@songs.each do |song|
            if !results[song.artist]
                results[song.artist] = 0
            end
            results[song.artist] += 1
        end
        results 
    end
end
