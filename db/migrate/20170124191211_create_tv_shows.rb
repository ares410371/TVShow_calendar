class CreateTvShows < ActiveRecord::Migration[5.0]
  def change
    create_table :tv_shows do |t|
      t.integer :tv_show_internal
      t.string :name
      t.text :overview
      t.string :poster_path
      t.string :backdrop_path
      t.integer :number_of_seasons
      t.integer :number_of_episodes
      t.string :original_language
      t.string :homepage
      t.string :first_air_date
      t.string :last_air_date
      t.string :episode_run_time
      t.string :vote_average
      t.string :status

      t.timestamps
    end
  end
end
