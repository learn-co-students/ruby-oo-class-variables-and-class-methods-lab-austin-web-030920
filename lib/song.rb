class Song
    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@artists << artist
        @@genres << genre
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
        genry = {}
        @@genres.each do |genre|
            if genry[genre]
                genry[genre] += 1
            else
                genry[genre] = 1
            end
        end
        genry
    end

    def self.artist_count
        arty = {}
        @@artists.each do |artist|
            if arty[artist]
                arty[artist] += 1
            else
                arty[artist] = 1
            end
        end
        arty
    end

    
    

end