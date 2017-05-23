class AddColumnToPost < ActiveRecord::Migration[5.1]
  def change
  	add_column :posts, :title, :text
  	add_column :comments, :title, :text
  	add_column :likes, :total_count, :integer
  	add_column :replies, :reply_on_comment, :text
  end
end
