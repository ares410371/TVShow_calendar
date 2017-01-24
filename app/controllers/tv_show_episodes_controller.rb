class TvShowEpisodesController < ApplicationController
  before_action :set_tv_show_episode, only: [:show, :edit, :update, :destroy]

  # GET /tv_show_episodes
  # GET /tv_show_episodes.json
  def index
    @tv_show_episodes = TvShowEpisode.all
  end

  # GET /tv_show_episodes/1
  # GET /tv_show_episodes/1.json
  def show
  end

  # GET /tv_show_episodes/new
  def new
    @tv_show_episode = TvShowEpisode.new
  end

  # GET /tv_show_episodes/1/edit
  def edit
  end

  # POST /tv_show_episodes
  # POST /tv_show_episodes.json
  def create
    @tv_show_episode = TvShowEpisode.new(tv_show_episode_params)

    respond_to do |format|
      if @tv_show_episode.save
        format.html { redirect_to @tv_show_episode, notice: 'Tv show episode was successfully created.' }
        format.json { render :show, status: :created, location: @tv_show_episode }
      else
        format.html { render :new }
        format.json { render json: @tv_show_episode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tv_show_episodes/1
  # PATCH/PUT /tv_show_episodes/1.json
  def update
    respond_to do |format|
      if @tv_show_episode.update(tv_show_episode_params)
        format.html { redirect_to @tv_show_episode, notice: 'Tv show episode was successfully updated.' }
        format.json { render :show, status: :ok, location: @tv_show_episode }
      else
        format.html { render :edit }
        format.json { render json: @tv_show_episode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tv_show_episodes/1
  # DELETE /tv_show_episodes/1.json
  def destroy
    @tv_show_episode.destroy
    respond_to do |format|
      format.html { redirect_to tv_show_episodes_url, notice: 'Tv show episode was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tv_show_episode
      @tv_show_episode = TvShowEpisode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tv_show_episode_params
      params.require(:tv_show_episode).permit(:tv_show_internal, :name, :overview, :season_number, :episode_number, :air_date, :still_path, :vote_average)
    end
end
