require 'test_helper'

class TvShowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tv_show = tv_shows(:one)
  end

  test "should get index" do
    get tv_shows_url
    assert_response :success
  end

  test "should get new" do
    get new_tv_show_url
    assert_response :success
  end

  test "should create tv_show" do
    assert_difference('TvShow.count') do
      post tv_shows_url, params: { tv_show: { backdrop_path: @tv_show.backdrop_path, episode_run_time: @tv_show.episode_run_time, first_air_date: @tv_show.first_air_date, homepage: @tv_show.homepage, last_air_date: @tv_show.last_air_date, name: @tv_show.name, number_of_episodes: @tv_show.number_of_episodes, number_of_seasons: @tv_show.number_of_seasons, original_language: @tv_show.original_language, overview: @tv_show.overview, poster_path: @tv_show.poster_path, status: @tv_show.status, tv_show_internal: @tv_show.tv_show_internal, vote_average: @tv_show.vote_average } }
    end

    assert_redirected_to tv_show_url(TvShow.last)
  end

  test "should show tv_show" do
    get tv_show_url(@tv_show)
    assert_response :success
  end

  test "should get edit" do
    get edit_tv_show_url(@tv_show)
    assert_response :success
  end

  test "should update tv_show" do
    patch tv_show_url(@tv_show), params: { tv_show: { backdrop_path: @tv_show.backdrop_path, episode_run_time: @tv_show.episode_run_time, first_air_date: @tv_show.first_air_date, homepage: @tv_show.homepage, last_air_date: @tv_show.last_air_date, name: @tv_show.name, number_of_episodes: @tv_show.number_of_episodes, number_of_seasons: @tv_show.number_of_seasons, original_language: @tv_show.original_language, overview: @tv_show.overview, poster_path: @tv_show.poster_path, status: @tv_show.status, tv_show_internal: @tv_show.tv_show_internal, vote_average: @tv_show.vote_average } }
    assert_redirected_to tv_show_url(@tv_show)
  end

  test "should destroy tv_show" do
    assert_difference('TvShow.count', -1) do
      delete tv_show_url(@tv_show)
    end

    assert_redirected_to tv_shows_url
  end
end
