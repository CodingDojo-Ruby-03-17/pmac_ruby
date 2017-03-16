class CreateFilms < ActiveRecord::Migration[5.0]
  def change
    create_table :films do |t|
      t.string :title
      t.string :genre
      t.date :year

      t.timestamps
    end
  end
end
