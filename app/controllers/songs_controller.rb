require "rack-flash"

class SongsController < ApplicationController
<<<<<<< HEAD
    get "/songs" do
        @songs = Song.all
        erb :"/songs/index"
end

    get "/songs/:slug" do
        @song = Song.all.find do |song|
        params[:slug] == song.slug
    end
        erb :"/songs/show"
    end
=======
  enable :sessions
  use Rack::Flash
  get "/songs" do
    @songs = Song.all
    erb :"/songs/index"
  end

  post "/songs" do
    # binding.pry
    @artist = Artist.first_or_create(params[:artist])
    @song = Song.new(params[:song])
    @song.artist = @artist
    @song.save
    # binding.pry
    params[:genres].each do |genre|
      SongGenre.create(song: @song, genre_id: genre.to_i)
    end
    flash[:message] = "Successfully created song."
    redirect "/songs/#{@song.slug}"
  end

  get "/songs/new" do
    @genres = Genre.all
    erb :"/songs/new"
  end

  get "/songs/:slug" do
    @song = Song.find_by_slug(params[:slug])
    erb :"/songs/show"
  end

  get "/songs/:slug/edit" do
    @song = Song.find_by_slug(params[:slug])
    @genres = Genre.all
    erb :"/songs/edit"
  end

  patch "/songs/:slug" do
    # binding.pry
    @song = Song.find_by_slug(params[:slug])
    @artist = Artist.first_or_create(params[:artist])
    @song.artist = @artist
    @song.save
    # binding.pry
    params[:genres].each do |genre|
      SongGenre.create(song: @song, genre_id: genre.to_i)
    end
    flash[:message] = "Successfully updated song."
    redirect "/songs/#{@song.slug}"
  end
>>>>>>> 216ece5be3984ce2b23d41cc5358114549556ffd
end
