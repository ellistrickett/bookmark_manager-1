require 'pg'

class Bookmark

  attr_reader :url, :title

  def initialize(url, title)
    @url = url
    @title = title
  end

  def self.all
    bookmarks = []

    if ENV['ENVIRONMENT'] == 'test'
      con = PG.connect :dbname => 'bookmark_manager_test'
    else
      con = PG.connect :dbname => 'bookmark_manager'
    end

    result = con.exec('SELECT * FROM bookmarks;')
    result.each do |row|
      bookmarks << Bookmark.new(row['url'], row['title'])
    end

    bookmarks
  end

  def self.add(url, title)
    if ENV['ENVIRONMENT'] == 'test'
      con = PG.connect :dbname => 'bookmark_manager_test'
    else
      con = PG.connect :dbname => 'bookmark_manager'
    end

    con.exec("INSERT INTO bookmarks(url, title) VALUES ('#{url}', '#{title}')")
  end
end
