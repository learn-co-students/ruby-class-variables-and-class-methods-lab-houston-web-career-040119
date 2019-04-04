require "pry"

class Song
    @@artists=[]
    @@genres=[]
    @@count=0

    @@all=[]

    attr_reader :name, :artist, :genre

    def initialize(name,artist,genre)
        @name=name
        @artist=artist
        @genre=genre
        @@count +=1
        @@artists.push(@artist)
        @@genres.push(@genre)

        @@all.push(self)
    end

    def self.all
        @@all
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
        count={}
        @@genres.each do |genre|
            if count[genre]
                count[genre] += 1
            else
                count[genre] = 1
            end
        end
        count
    end

    def self.artist_count
        count={}
        @@artists.each do |artist|
            if count[artist]
                count[artist]+=1
            else
                count[artist]=1
            end
        end
        count
    end


end


# lucifer= Song.new("Lucifer", "Jay-Z", "rap" )

# ninety_nine_problems= Song.new("99 Problems", "Jay-Z", "rap")
# hit_me=Song.new("hit me baby one more time", "Brittany Spears", "pop")


# binding.pry
# puts"hi"