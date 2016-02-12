class StaticPagesController < ApplicationController
  def home
    @featuredArtwork = Artwork.all
  end
end
