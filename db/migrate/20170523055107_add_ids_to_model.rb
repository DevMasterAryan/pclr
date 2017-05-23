class AddIdsToModel < ActiveRecord::Migration[5.1]
  def change
  	add_column :posts, :user_id, :integer
  	add_column :comments, :user_id, :integer
  	add_column :comments, :post_id, :integer
  	add_column :likes, :user_id, :integer
  	add_column :likes, :post_id, :integer
  	add_column :likes, :comment_id, :integer
  	add_column :likes, :reply_id, :integer
  	add_column :replies, :user_id, :integer
  	add_column :replies, :comment_id,:integer

  end
end
