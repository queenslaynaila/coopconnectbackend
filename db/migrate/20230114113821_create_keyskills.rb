class CreateKeyskills < ActiveRecord::Migration[7.0]
  def change
    create_table :keyskills do |t|
      t.integer :seeker_id
      t.text :skillname

      t.timestamps
    end
  end
end
