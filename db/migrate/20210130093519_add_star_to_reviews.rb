class AddStarToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :star, :integer
  end
end
