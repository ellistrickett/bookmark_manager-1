require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  get '/' do
    'Bookmark Manager'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb (:'all_bookmarks')
  end

  post '/bookmarks' do
    Bookmark.add(params[:url], params[:title])
    redirect('/bookmarks')
  end

  post '/delete-bookmarks' do
    Bookmark.delete(params[:title])
    redirect('/bookmarks')
  end

  get '/bookmarks/:id/edit' do
    @found_bookmark = Bookmark.find(params[:id])
    erb :update_bookmark
  end
  

  run! if app_file == $0
end
