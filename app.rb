require 'sinatra/base'

class BookmarkManager < Sinatra::Base
  get '/' do
    'Bookmark Manager'
  end

  get '/bookmarks' do 
    @bookmarks = [
      'https://www.facebook.com/',
      'https://www.instagram.com/'
    ]
    erb(:all_bookmarks)
  end 

  run! if app_file == $0
end
