class ChangeMessagesToBelong < ActiveRecord::Migration
  def change
     change_table :messages do |t|
      t.belongs_to :user, index: true
    end
  end
end
