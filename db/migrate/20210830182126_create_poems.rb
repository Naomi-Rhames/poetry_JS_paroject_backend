class CreatePoems < ActiveRecord::Migration[6.1]
  def change
    create_table :poems do |t|
      t.string :title
      t.string :author
      t.string :stanza
      t.string :genre
      t.string :image_url

      t.timestamps
    end
  end
end
