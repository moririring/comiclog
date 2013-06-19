class CreateComics < ActiveRecord::Migration
  def change
    create_table :comics do |t|
      t.int :id
      t.string :comic_name
      t.string :author
      t.string :publisher

      t.timestamps
    end
  end
end
