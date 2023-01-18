class CreateLanguages < ActiveRecord::Migration[7.0]
  def change
    create_table :languages do |t|
      t.integer :seeker_id
      t.text :language

      t.timestamps
    end
  end
end
