require 'sinatra/base'
require './lib/bookmark'
require 'pry'
require 'sinatra/flash'
require 'shotgun'
require 'uri'

class BookmarkManager < Sinatra::Base
  enable :sessions
  register Sinatra::Flash

  get '/' do
    "Bookmark Manager"
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  post '/bookmarks' do
    flash[:notice] = "You must submit a valid URL." unless Bookmark.create(params['url'])
    redirect '/bookmarks'
  end

    run! if app_file == $0
end
