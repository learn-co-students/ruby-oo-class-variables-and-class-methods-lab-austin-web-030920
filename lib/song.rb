class Song
    @@count = 0
    @@genres = []
    @@artists = []
    attr_accessor :name, :artist, :genre
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
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
        g_hash = {}
        @@genres.each do |g|
          if g_hash[g] == nil
            g_hash[g] = 1
          else
            g_hash[g] += 1
          end
        end
        g_hash
    end

    def self.artist_count
        a_hash = {}
        @@artists.each do |a|
          if a_hash[a] == nil
            a_hash[a] = 1
          else
            a_hash[a] += 1
          end
        end
        a_hash
    end

end