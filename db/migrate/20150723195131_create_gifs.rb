class CreateGifs < ActiveRecord::Migration
  def change
    create_table :gifs do |t|
      t.string :name
      t.string :url
      t.string :rating
      t.string :board_id
      
      t.timestamps null: false
    end
  end
end
