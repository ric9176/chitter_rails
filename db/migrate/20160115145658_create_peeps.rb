class CreatePeeps < ActiveRecord::Migration
  def change
    create_table :peeps do |t|
      t.text :content
      t.timestamps null: false
    end
  end
end
