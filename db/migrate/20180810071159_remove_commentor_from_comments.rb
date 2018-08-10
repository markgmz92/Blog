class RemoveCommentorFromComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :commentor, :string
  end
end
