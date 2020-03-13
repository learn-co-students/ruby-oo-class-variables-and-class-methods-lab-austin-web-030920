require 'pry'

class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []

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
        @@genres.reduce({}) do |counts, genre|
            # binding.pry
            if counts[genre]
                counts[genre] += 1
            else
                counts[genre] = 1
            end
            counts
        end
    end

    def self.artist_count
        @@artists.reduce({}) do |counts, genre|
            if counts[genre]
                counts[genre] += 1
            else
                counts[genre] = 1
            end
            counts
        end
    end

end