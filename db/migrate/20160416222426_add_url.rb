class AddUrl < ActiveRecord::Migration
  def change
    change_table :messages do |t|
       t.string :url
    end
  end
end
