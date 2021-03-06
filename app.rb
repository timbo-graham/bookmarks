require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/bookmark'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Hello world'
  end

  get '/bookmarks' do
    @list = Bookmark.new.all
    erb :bookmarks
  end

  run! if app_file == $0

end
