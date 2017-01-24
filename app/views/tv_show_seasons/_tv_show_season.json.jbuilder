json.extract! tv_show_season, :id, :tv_show_internal, :name, :overview, :season_number, :air_date, :poster_path, :created_at, :updated_at
json.url tv_show_season_url(tv_show_season, format: :json)