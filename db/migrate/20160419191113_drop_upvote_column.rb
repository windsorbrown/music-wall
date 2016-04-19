class DropUpvoteColumn < ActiveRecord::Migration
  def change
         change_table :messages do |t|
        t.remove :upvotes
            end
  end
end
