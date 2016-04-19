class AddTimestamps< ActiveRecord::Migration
  def change
    change_table :messages do |t|
       t.timestamps NULL: false
    end
  end
end
