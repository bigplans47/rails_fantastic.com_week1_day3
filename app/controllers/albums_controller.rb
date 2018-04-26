class AlbumsController < ApplicationController
  # before_action :authenticate_user!, :only => [:new, :edit]
  before_action :only => [:new, :edit] do
    redirect_to new_user_session_path unless current_user && current_user.admin
    p current_user.admin
  end
  # p :authenticate_user
  def new
    @artist = Artist.find(params[:artist_id])
    @album = @artist.albums.new
  end
  def create
    @artist = Artist.find(params[:artist_id])
    @album = @artist.albums.new(album_params)
    if @album.save
      flash[:notice] = "Album successfully added!"
      redirect_to artist_path(@artist)
    else
      render :new
    end
  end

  def index
    @artists = Artist.all
    render :index
  end

  def show
    @artist = Artist.find(params[:id])
    @album = Album.find(params[:id])
    render :show
  end

  def edit
    @artist = Artist.find(params[:artist_id])
    @album = Album.find(params[:id])
    render :edit
  end

  def update
    @artist = Artist.find(params[:artist_id])
    @album = Album.find(params[:id])
    if @album.update(album_params)
      redirect_to artist_path(@artist)
    else
      render :edit
    end
  end

  def destroy
    @artist = Artist.find(params[:artist_id])
    @album = Album.find(params[:id])
    @album.destroy
    redirect_to artist_path(@artist)
  end

  private
  def album_params
    params.require(:album).permit(:review, :year, :title)
  end
end
