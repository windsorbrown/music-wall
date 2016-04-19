class RemoveContent < ActiveRecord::Migration
  def change
    change_table :messages do |t|
       t.remove :content
    end
  end
end
