class CreateUserTournaments < ActiveRecord::Migration[5.2]
  def change
    create_table :user_tournaments do |t|
      t.integer :user_id
      t.integer :tournament_id

      t.timestamps
    end
  end
end
