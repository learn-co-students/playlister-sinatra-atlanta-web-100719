class SongsController < ApplicationController
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
end
