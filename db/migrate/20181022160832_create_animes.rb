class CreateAnimes < ActiveRecord::Migration[5.2]
  def change
    create_table :animes do |t|
      t.string :name
      t.text :description
      t.string :location
      t.string :link
      t.text :image_url
      t.timestamps
    end
  end
end
