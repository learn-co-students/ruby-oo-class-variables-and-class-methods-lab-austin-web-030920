class Song

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@artists << artist
        @@genres << genre
        @@count += 1
    end

    attr_accessor :name, :genre, :artist

    def self.count
        return @@count
    end

    def self.artists
        return @@artists.uniq
    end

    def self.genres
        return @@genres.uniq
    end

    def self.genre_count
        result = Hash.new(0)
        @@genres.each { |genre| result[genre] += 1}
        return result
    end

    def self.artist_count
        result = Hash.new(0)
        @@artists.each { |artist| result[artist] += 1}
        return result
    end






end