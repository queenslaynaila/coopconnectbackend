class CreateJobapplications < ActiveRecord::Migration[7.0]
  def change
    create_table :jobapplications do |t|
      t.integer :job_id
      t.integer :seeker_id
      t.text   :status ,default: "Applied"


      t.timestamps
    end
  end
end
