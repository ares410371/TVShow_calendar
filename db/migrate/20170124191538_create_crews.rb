class CreateCrews < ActiveRecord::Migration[5.0]
  def change
    create_table :crews do |t|
      t.integer :tv_show_internal
      t.integer :episode_number
      t.integer :season_number
      t.string :name
      t.string :department
      t.string :job
      t.string :profile_path

      t.timestamps
    end
  end
end
