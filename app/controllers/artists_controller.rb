class ArtistsController < ApplicationController
  get "/artists" do
    @artists = Artist.all
    erb :"/artists/index"
  end

  get "/artists/:slug" do
    @artist = Artist.all.find do |artist|
      params[:slug] == artist.name.slug
    end
    erb :"/artists/show"
  end
end
