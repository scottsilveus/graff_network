class FeaturedContentController < ApplicationController
  def index
    artwork = Artwork.all
    render :json => artwork
  end
end
