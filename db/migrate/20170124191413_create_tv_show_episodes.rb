class CreateTvShowEpisodes < ActiveRecord::Migration[5.0]
  def change
    create_table :tv_show_episodes do |t|
      t.integer :tv_show_internal
      t.string :name
      t.text :overview
      t.integer :season_number
      t.integer :episode_number
      t.string :air_date
      t.string :still_path
      t.string :vote_average

      t.timestamps
    end
  end
end
