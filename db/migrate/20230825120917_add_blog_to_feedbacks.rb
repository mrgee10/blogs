class AddBlogToFeedbacks < ActiveRecord::Migration[7.0]
  def change
    add_reference :feedbacks, :blog, null: false, foreign_key: true
  end
end
