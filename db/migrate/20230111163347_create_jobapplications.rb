class CreateJobapplications < ActiveRecord::Migration[7.0]
  def change
    create_table :jobapplications do |t|
      t.integer :job_id
      t.integer :seeker_id
      t.date :dateapplied

      t.timestamps
    end
  end
end
