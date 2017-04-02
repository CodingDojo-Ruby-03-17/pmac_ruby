class CreateOwners < ActiveRecord::Migration[5.0]
  def change
    create_table :owners do |t|
      t.user :references

      t.timestamps
    end
  end
end
