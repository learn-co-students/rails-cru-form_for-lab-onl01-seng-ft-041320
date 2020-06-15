class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.text :bio
      t.timestamps null: false 

      t.string :published_status
    end
  end
end
