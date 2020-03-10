require 'pry'
class Song
    attr_accessor :name, :genre, :artist
    @@count = 0
    @@genres = []
    @@artists = []
    @@genre_counter = {}
    @@artist_song_counter = {}

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << @genre
        @@artists << @artist
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        @@genres.each do |genre|
            # binding.pry
            if !@@genre_counter[genre]
                @@genre_counter[genre] = 1
            else
                @@genre_counter[genre] += 1
            end
        end
        # binding.pry
        @@genre_counter
    end

    def self.artist_count
        @@artists.each do |artist|
            # binding.pry
            if !@@artist_song_counter[artist]
                @@artist_song_counter[artist] = 1
            else
                @@artist_song_counter[artist] += 1
            end
        end
        # binding.pry
        @@artist_song_counter
    end
end