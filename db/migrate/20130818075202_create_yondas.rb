class CreateYondas < ActiveRecord::Migration
  def change
    create_table :yondas do |t|
      t.integer :user
      t.text :comment
      t.references :comic

      t.timestamps
    end
    add_index :yondas, :comic_id
  end
end
