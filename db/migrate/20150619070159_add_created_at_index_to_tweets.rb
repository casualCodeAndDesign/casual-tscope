class AddCreatedAtIndexToTweets < ActiveRecord::Migration
  def change
      add_index :tweets, [:keyword_id, :created_at]
  end
end
