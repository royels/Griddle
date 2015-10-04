class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :img
      t.string :title

      t.timestamps null: false
    end
  end
end
