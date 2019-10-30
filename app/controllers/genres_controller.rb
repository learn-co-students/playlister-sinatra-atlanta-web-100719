class GenresController < ApplicationController
  get "/genres" do
    @genres = Genre.all
    erb :"/genres/index"
  end

  get "/genres/:slug" do
    @genre = Genre.all.find do |genre|
      params[:slug] == genre.name.slug
    end
    erb :"/genres/show"
  end
end
