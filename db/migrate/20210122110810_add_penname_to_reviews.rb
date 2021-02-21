class AddPennameToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :penname, :string
  end
end
