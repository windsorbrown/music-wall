class AddUpvotesClass < ActiveRecord::Migration
  def change
     create_table :upvotes do |t|
      t.belongs_to :user, index: true
      t.belongs_to :message, index: true
      t.timestamps NULL: false
    end
  end
end
