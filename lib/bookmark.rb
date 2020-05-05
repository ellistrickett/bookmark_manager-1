require 'pg'

class Bookmark
  def self.all
    bookmarks = []

    con = PG.connect :dbname => 'bookmark_manager'
    result = con.exec('SELECT * FROM bookmarks;')
    result.each do |x|
      bookmarks << x['url']
    end 

    bookmarks
  end
end
