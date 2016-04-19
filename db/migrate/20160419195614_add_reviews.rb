class AddReviews < ActiveRecord::Migration
  def change
      create_table :reviews do |t|
        
        t.belongs_to :user, index: true
        t.belongs_to :message, index: true
        t.string :review_text
        t.integer :review_stars
        t.timestamps NULL: false
    end
  end
end
