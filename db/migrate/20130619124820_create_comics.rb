class CreateComics < ActiveRecord::Migration
  def change
    create_table :comics do |t|
      t.integer :id
      t.text :comic_name
      t.string :author
      t.string :publisher

      t.timestamps
    end
  end
end
