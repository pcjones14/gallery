class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|

      t.string :title
      t.text :caption

      t.timestamps
    end
  end
end
