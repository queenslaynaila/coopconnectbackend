class CreateSavedinternships < ActiveRecord::Migration[7.0]
  def change
    create_table :savedinternships do |t|
      t.integer :seeker_id
      t.integer :internship_id

      t.timestamps
    end
  end
end
