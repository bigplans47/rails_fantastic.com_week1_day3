class AlbumsController < ApplicationController
  def new
    @artist = Artist.find(params[:artist_id])
    @album = @artist.albums.new
  end
  def create
    @artist = Artist.find(params[:artist_id])
    @album = @artist.albums.new(album_params)
    if @album.save
      redirect_to artist_path(@artist)
    else
      render :new
    end
  end


  # def index
  #   @artists = Artist.all
  #   render :index
  # end
  #
  # def show
  #   @artist = Artist.find(params[:id])
  #   render :show
  # end
  #
  # def edit
  #   @artist = Artist.find(params[:id])
  #   render :edit
  # end
  #
  # def update
  #   @artist = Artist.find(params[:id])
  #   if @artist.update(artist_params)
  #     redirect_to artists_path
  #   else
  #     render :edit
  #   end
  # end
  #
  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    redirect_to artist_path
  end

  private
  def album_params
    params.require(:album).permit(:review, :year, :title)
  end
end
