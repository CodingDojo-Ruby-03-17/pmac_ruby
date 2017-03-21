class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :location
      t.string :occupation

      t.timestamps
    end
  end
end
