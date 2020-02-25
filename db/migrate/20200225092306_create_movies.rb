class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :name
      t.integer :year
      t.string :director
      t.string :main_star
      t.text :description
      t.integer :favorited, default: 0

      t.timestamps
    end
  end
end
