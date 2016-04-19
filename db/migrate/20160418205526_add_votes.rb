class AddVotes < ActiveRecord::Migration
  def change
     change_table :messages do |t|
      t.integer :upvotes
    end
  end
end
