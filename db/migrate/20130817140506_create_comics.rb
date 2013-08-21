class CreateComics < ActiveRecord::Migration
  def change
    create_table :comics do |t|
      t.text :writers
      t.text :title
      t.text :publisher
      t.text :turn
      t.text :price
      t.text :identification
      t.text :sale
      t.text :link
      t.text :img
      t.text :content
      t.datetime :created_at
      t.datetime :updated_at
    end  
  end
end
