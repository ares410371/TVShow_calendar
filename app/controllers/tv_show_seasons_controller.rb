class TvShowSeasonsController < ApplicationController
  before_action :set_tv_show_season, only: [:show, :edit, :update, :destroy]

  # GET /tv_show_seasons
  # GET /tv_show_seasons.json
  def index
    @tv_show_seasons = TvShowSeason.all
  end

  # GET /tv_show_seasons/1
  # GET /tv_show_seasons/1.json
  def show
  end

  # GET /tv_show_seasons/new
  def new
    @tv_show_season = TvShowSeason.new
  end

  # GET /tv_show_seasons/1/edit
  def edit
  end

  # POST /tv_show_seasons
  # POST /tv_show_seasons.json
  def create
    @tv_show_season = TvShowSeason.new(tv_show_season_params)

    respond_to do |format|
      if @tv_show_season.save
        format.html { redirect_to @tv_show_season, notice: 'Tv show season was successfully created.' }
        format.json { render :show, status: :created, location: @tv_show_season }
      else
        format.html { render :new }
        format.json { render json: @tv_show_season.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tv_show_seasons/1
  # PATCH/PUT /tv_show_seasons/1.json
  def update
    respond_to do |format|
      if @tv_show_season.update(tv_show_season_params)
        format.html { redirect_to @tv_show_season, notice: 'Tv show season was successfully updated.' }
        format.json { render :show, status: :ok, location: @tv_show_season }
      else
        format.html { render :edit }
        format.json { render json: @tv_show_season.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tv_show_seasons/1
  # DELETE /tv_show_seasons/1.json
  def destroy
    @tv_show_season.destroy
    respond_to do |format|
      format.html { redirect_to tv_show_seasons_url, notice: 'Tv show season was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tv_show_season
      @tv_show_season = TvShowSeason.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tv_show_season_params
      params.require(:tv_show_season).permit(:tv_show_internal, :name, :overview, :season_number, :air_date, :poster_path)
    end
end
