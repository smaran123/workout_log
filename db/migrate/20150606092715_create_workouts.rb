class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :mood
      t.datetime :date
      t.string :length
      t.string :workout

      t.timestamps null: false
    end
  end
end
