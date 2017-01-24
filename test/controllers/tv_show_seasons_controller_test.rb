require 'test_helper'

class TvShowSeasonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tv_show_season = tv_show_seasons(:one)
  end

  test "should get index" do
    get tv_show_seasons_url
    assert_response :success
  end

  test "should get new" do
    get new_tv_show_season_url
    assert_response :success
  end

  test "should create tv_show_season" do
    assert_difference('TvShowSeason.count') do
      post tv_show_seasons_url, params: { tv_show_season: { air_date: @tv_show_season.air_date, name: @tv_show_season.name, overview: @tv_show_season.overview, poster_path: @tv_show_season.poster_path, season_number: @tv_show_season.season_number, tv_show_internal: @tv_show_season.tv_show_internal } }
    end

    assert_redirected_to tv_show_season_url(TvShowSeason.last)
  end

  test "should show tv_show_season" do
    get tv_show_season_url(@tv_show_season)
    assert_response :success
  end

  test "should get edit" do
    get edit_tv_show_season_url(@tv_show_season)
    assert_response :success
  end

  test "should update tv_show_season" do
    patch tv_show_season_url(@tv_show_season), params: { tv_show_season: { air_date: @tv_show_season.air_date, name: @tv_show_season.name, overview: @tv_show_season.overview, poster_path: @tv_show_season.poster_path, season_number: @tv_show_season.season_number, tv_show_internal: @tv_show_season.tv_show_internal } }
    assert_redirected_to tv_show_season_url(@tv_show_season)
  end

  test "should destroy tv_show_season" do
    assert_difference('TvShowSeason.count', -1) do
      delete tv_show_season_url(@tv_show_season)
    end

    assert_redirected_to tv_show_seasons_url
  end
end
