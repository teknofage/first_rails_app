class AddPostCommentToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :post_comment, :text
  end
end
