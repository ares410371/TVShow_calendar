class CreateTvShowSeasons < ActiveRecord::Migration[5.0]
  def change
    create_table :tv_show_seasons do |t|
      t.integer :tv_show_internal
      t.string :name
      t.text :overview
      t.integer :season_number
      t.string :air_date
      t.string :poster_path

      t.timestamps
    end
  end
end
