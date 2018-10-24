class RemoveUserIdAndGameIdFromTrounaments < ActiveRecord::Migration[5.2]
  def change
    remove_column :tournaments, :user_id, :integer
    remove_column :tournaments, :game_id, :integer
  end
end
