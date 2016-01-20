class ArtworkController < ApplicationController
  before_action :set_upload, only: [:show, :edit, :update, :destroy]

  # GET /uploads
  def index
    if params[:user_id]
      @user_id  = params[:user_id]
      @artworks = User.find_by_id(@user_id).artworks
    else
      @crew_id  = params[:crew_id]
      @artworks = Crew.find_by_id(@crew_id).artworks
    end
  end

  # GET /uploads/1
  def show
    if params[:user_id]
      @user_id = params[:user_id]
    else
      @crew_id = params[:crew_id]
    end

    artwork_id = params[:id]
    @artwork = Artwork.find_by_id(artwork_id)
  end

  # GET /uploads/new
  def new
    @artwork = Artwork.new
    @user_id = params[:user_id]
    @crew_id = params[:crew_id]
  end

  # GET /uploads/1/edit
  def edit
  end

  # POST /uploads
  def create
    @artwork = Artwork.new(post_upload_params)
    artist   = User.find_by_id(params[:user_id])
    if @artwork.save
      artist.artworks << @artwork
      redirect_to user_artwork_path(params[:user_id], @artwork), notice: "Upload was successfully created."
    else
      render :new
    end
  end

  # PATCH/PUT /uploads/1
  def update
    if @artwork.update(post_upload_params)
      redirect_to @artwork, notice: "Upload attachment was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /uploads/1
  def destroy
    @artwork.destroy
    redirect_to user_artwork_index_path(params[:user_id]), notice: "Upload was successfully destroyed."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_upload
    @artwork = Artwork.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def post_upload_params
    params.require(:artwork).permit(:picture)
  end
end
