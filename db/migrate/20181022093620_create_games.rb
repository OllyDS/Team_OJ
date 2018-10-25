class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name
      t.string :tag_line
      t.string :bio_paragraph_1
      t.string :bio_paragraph_2
      t.string :bio_paragraph_3
      t.string :bio_paragraph_4

      t.timestamps
    end
  end
end
