class ChangeUpvotesToDefault < ActiveRecord::Migration
  def change
    change_column :messages, :upvotes, :integer, :default => 0
  end
end