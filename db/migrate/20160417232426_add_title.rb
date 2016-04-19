class AddTitle< ActiveRecord::Migration
  def change
    change_table :messages do |t|
        t.string :title
    end
  end
end
