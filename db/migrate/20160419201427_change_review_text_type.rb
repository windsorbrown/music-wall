class ChangeReviewTextType < ActiveRecord::Migration
  def change
    change_column :reviews, :review_text,  :text
  end
end
