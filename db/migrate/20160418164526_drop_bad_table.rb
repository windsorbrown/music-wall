class DropBadTable < ActiveRecord::Migration
  def change
     change_table :messages do |t|
        t.remove :teacher_id    end
  end
end
