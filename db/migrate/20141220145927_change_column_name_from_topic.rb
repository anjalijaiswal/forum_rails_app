class ChangeColumnNameFromTopic < ActiveRecord::Migration
  def change
  	rename_column :topics, :last_poster_id, :user_id
  end
end
