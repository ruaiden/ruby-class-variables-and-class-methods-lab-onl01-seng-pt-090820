require 'pry'
class Song
  
@@count = 0 
@@artist_count={}
@@genre_count={}
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
    
    def self.genre_count
      
      self.each do |genres,index| @@genre_count << genres + index
    end 
    end
end 