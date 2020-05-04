class Bookmark 
  
    attr_accessor :bookmarks
  
    def initialize 
      @bookmarks = [
          "https://www.facebook.com/", 
          "https://www.instagram.com/"
        ]
    end 
  
    def all
      @bookmarks
    end 
  end 