class CreatePoctures < ActiveRecord::Migration
  def change
    create_table :poctures do |t|
      t.string :artist
      t.string :title
      t.string :url
      t.timestamps
    end
  end
end
