class RemoveTitle < ActiveRecord::Migration
  def change
    change_table :messages do |t|
       t.remove :title
    end
  end
end
