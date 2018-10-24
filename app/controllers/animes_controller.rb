class AnimesController < ApplicationController
  def index
    #@anime = Anime.all()
    @anime = Anime.all.order(:name).paginate(:page => params[:page], :per_page => 10)
  end

  def show
    @anime = Anime.find(params[:id])
  end

  def new
    @anime = Anime.new()
  end

  def edit
    @anime = Anime.find(params[:id])
  end

  def create
    @anime = Anime.new(anime_parms)
    if @anime.save
      flash[:success] = @anime.name + " has been added"
      redirect_to @anime
    else
      #flash[:warning] = "Error has occured"
      render 'new'
    end
  end

  def update
    @anime = Anime.find(params[:id])
    if @anime.update(anime_parms)
      flash[:success] = @anime.name + " has been updated"
      redirect_to @anime
    else
      render 'edit'
    end
  end

  def destroy
    @anime = Anime.find(params[:id])
    @anime.destroy
    flash[:success] = @anime.name + " has been deleted"
    redirect_to animes_path
  end

  private
  def anime_parms
      params.require(:anime).permit(:name, :description, :location)
  end
end
