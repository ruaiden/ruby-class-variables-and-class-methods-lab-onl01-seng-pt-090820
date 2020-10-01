require 'pry'
class Song
  
@@count = 0 
@@artists = []
@@genres = []

    attr_accessor :name, :artist, :genre  
    
    def initialize(name,artist,genre)
      
      @name=name
      @artist = artist
      @genre=genre
      @@count+= 1
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
    
    
    
    def self.artist_count
      artist_count={}
      self.each do |artist| 
        if artist_count[artist]
          artist_count += 1
        else
          artist_count = 1 
        end 
      end 
      artist_count
    end 
    
end 