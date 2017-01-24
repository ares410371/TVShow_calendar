require 'test_helper'

class TvShowEpisodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tv_show_episode = tv_show_episodes(:one)
  end

  test "should get index" do
    get tv_show_episodes_url
    assert_response :success
  end

  test "should get new" do
    get new_tv_show_episode_url
    assert_response :success
  end

  test "should create tv_show_episode" do
    assert_difference('TvShowEpisode.count') do
      post tv_show_episodes_url, params: { tv_show_episode: { air_date: @tv_show_episode.air_date, episode_number: @tv_show_episode.episode_number, name: @tv_show_episode.name, overview: @tv_show_episode.overview, season_number: @tv_show_episode.season_number, still_path: @tv_show_episode.still_path, tv_show_internal: @tv_show_episode.tv_show_internal, vote_average: @tv_show_episode.vote_average } }
    end

    assert_redirected_to tv_show_episode_url(TvShowEpisode.last)
  end

  test "should show tv_show_episode" do
    get tv_show_episode_url(@tv_show_episode)
    assert_response :success
  end

  test "should get edit" do
    get edit_tv_show_episode_url(@tv_show_episode)
    assert_response :success
  end

  test "should update tv_show_episode" do
    patch tv_show_episode_url(@tv_show_episode), params: { tv_show_episode: { air_date: @tv_show_episode.air_date, episode_number: @tv_show_episode.episode_number, name: @tv_show_episode.name, overview: @tv_show_episode.overview, season_number: @tv_show_episode.season_number, still_path: @tv_show_episode.still_path, tv_show_internal: @tv_show_episode.tv_show_internal, vote_average: @tv_show_episode.vote_average } }
    assert_redirected_to tv_show_episode_url(@tv_show_episode)
  end

  test "should destroy tv_show_episode" do
    assert_difference('TvShowEpisode.count', -1) do
      delete tv_show_episode_url(@tv_show_episode)
    end

    assert_redirected_to tv_show_episodes_url
  end
end
